import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/closet"
user_id = st.session_state['user_id']

st.title("My Closet")
st.write("Catalogue your wardrobe so you never lose track of what you own.")

st.write("### My Clothing")
try:
    response = requests.get(f"{API_URL}/users/{user_id}/clothing")
    response.raise_for_status()
    clothing = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load clothing: {e}")
    clothing = []

if clothing:
    st.dataframe(
        [{k: v for k, v in item.items() if k != "image"} for item in clothing],
        use_container_width=True,
    )
else:
    st.info("No clothing items yet — add one below!")

st.divider()

st.write("### Add a New Clothing Item")
with st.form("add_clothing_form"):
    new_id = st.number_input("Clothing ID", min_value=1, step=1)
    new_name = st.text_input("Name")
    new_brand = st.text_input("Brand")
    new_type = st.selectbox("Type", ["T SHIRT", "SHORTS", "JACKET", "SWEATER", "PANTS", "SHOES", "ACCESSORY"])
    submitted = st.form_submit_button("Add Clothing Item", type='primary')

    if submitted:
        payload = {
            "clothing_id": int(new_id),
            "name": new_name,
            "brand": new_brand,
            "type": new_type,
            "image": None,
            "user_id": user_id,
        }
        try:
            response = requests.post(f"{API_URL}/clothing", json=payload)
            response.raise_for_status()
            st.success("Clothing item added!")
            st.rerun()
        except requests.exceptions.RequestException as e:
            st.error(f"Could not add clothing item: {e}")

st.divider()

st.write("### Edit or Remove a Clothing Item")
if clothing:
    ids = [item["clothing_id"] for item in clothing]
    selected_id = st.selectbox("Select a clothing item by ID", ids)

    detail = None
    try:
        detail_response = requests.get(f"{API_URL}/clothing/{selected_id}")
        detail_response.raise_for_status()
        detail = detail_response.json()
    except requests.exceptions.RequestException as e:
        st.error(f"Could not load item detail: {e}")

    if detail:
        col1, col2 = st.columns(2)

        with col1:
            with st.form("edit_clothing_form"):
                edit_name = st.text_input("Name", value=detail.get("name") or "")
                edit_brand = st.text_input("Brand", value=detail.get("brand") or "")
                edit_type = st.text_input("Type", value=detail.get("type") or "")
                edit_submitted = st.form_submit_button("Save Changes", type='primary')

                if edit_submitted:
                    try:
                        response = requests.put(
                            f"{API_URL}/clothing/{selected_id}",
                            json={"name": edit_name, "brand": edit_brand, "type": edit_type},
                        )
                        response.raise_for_status()
                        st.success("Clothing item updated!")
                        st.rerun()
                    except requests.exceptions.RequestException as e:
                        st.error(f"Could not update clothing item: {e}")

        with col2:
            st.write("")
            st.write("")
            if st.button("Delete This Item", type='secondary'):
                try:
                    response = requests.delete(f"{API_URL}/clothing/{selected_id}")
                    response.raise_for_status()
                    st.success("Clothing item deleted!")
                    st.rerun()
                except requests.exceptions.RequestException as e:
                    st.error(f"Could not delete clothing item: {e}")
else:
    st.info("Add a clothing item above before editing or deleting one.")
