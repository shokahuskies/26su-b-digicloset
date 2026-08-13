import logging
logger = logging.getLogger(__name__)

import datetime
import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

CLOSET_API = "http://web-api:4000/closet"
OUTFITS_API = "http://web-api:4000/outfits"
user_id = st.session_state['user_id']

st.title("My Outfits")
st.write("Build outfits from clothes you already own, and keep track of how often you wear them.")

st.write("### My Saved Outfits")
try:
    response = requests.get(f"{OUTFITS_API}/users/{user_id}")
    response.raise_for_status()
    outfits = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load outfits: {e}")
    outfits = []

if outfits:
    st.dataframe(outfits, use_container_width=True)
else:
    st.info("No outfits yet — build one below!")

st.divider()

st.write("### Build a New Outfit")
try:
    clothing_response = requests.get(f"{CLOSET_API}/users/{user_id}/clothing")
    clothing_response.raise_for_status()
    my_clothing = clothing_response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load your clothing: {e}")
    my_clothing = []

with st.form("create_outfit_form"):
    new_outfit_id = st.number_input("Outfit ID", min_value=1, step=1)
    season = st.selectbox("Season", ["SPRING", "SUMMER", "FALL", "WINTER"])
    occasion = st.text_input("Occasion", value="CASUAL")
    piece_options = {f"{item['clothing_id']} — {item['name']}": item["clothing_id"] for item in my_clothing}
    selected_pieces = st.multiselect(
        "Add pieces (as many accessories/items as you'd like)",
        options=list(piece_options.keys()),
    )
    outfit_submitted = st.form_submit_button("Save Outfit", type='primary')

    if outfit_submitted:
        clothing_ids = [piece_options[label] for label in selected_pieces]
        if not clothing_ids:
            st.error("Select at least one clothing piece for this outfit.")
        else:
            try:
                response = requests.post(
                    OUTFITS_API,
                    json={
                        "outfit_id": int(new_outfit_id),
                        "season": season,
                        "occasion": occasion,
                        "clothing_ids": clothing_ids,
                    },
                )
                response.raise_for_status()
                st.success("Outfit created!")
                st.rerun()
            except requests.exceptions.RequestException as e:
                st.error(f"Could not create outfit: {e}")

st.divider()

st.write("### Wear or Remove an Outfit")
if outfits:
    outfit_ids = [o["outfit_id"] for o in outfits]
    selected_outfit_id = st.selectbox("Select an outfit by ID", outfit_ids)

    try:
        detail_response = requests.get(f"{OUTFITS_API}/{selected_outfit_id}")
        detail_response.raise_for_status()
        outfit_detail = detail_response.json()
    except requests.exceptions.RequestException as e:
        st.error(f"Could not load outfit detail: {e}")
        outfit_detail = None

    if outfit_detail:
        st.write("**Pieces in this outfit:**")
        st.dataframe(
            [{k: v for k, v in p.items() if k != "image"} for p in outfit_detail.get("pieces", [])],
            use_container_width=True,
        )

        col1, col2 = st.columns(2)
        with col1:
            if st.button("Mark as Worn Today", type='primary'):
                try:
                    response = requests.put(
                        f"{OUTFITS_API}/{selected_outfit_id}",
                        json={
                            "last_worn": str(datetime.date.today()),
                            "times_worn_month": (outfit_detail.get("times_worn_month") or 0) + 1,
                            "times_worn_total": (outfit_detail.get("times_worn_total") or 0) + 1,
                        },
                    )
                    response.raise_for_status()
                    st.success("Outfit updated!")
                    st.rerun()
                except requests.exceptions.RequestException as e:
                    st.error(f"Could not update outfit: {e}")

        with col2:
            if st.button("Delete This Outfit", type='secondary'):
                try:
                    response = requests.delete(f"{OUTFITS_API}/{selected_outfit_id}")
                    response.raise_for_status()
                    st.success("Outfit deleted!")
                    st.rerun()
                except requests.exceptions.RequestException as e:
                    st.error(f"Could not delete outfit: {e}")
else:
    st.info("Build an outfit above before managing one.")
