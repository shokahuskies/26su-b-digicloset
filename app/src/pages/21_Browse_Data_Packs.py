import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/clients"
client_id = st.session_state['client_id']

st.title("Browse Data Packs")
st.write("See what aggregated user data is available, filter by category, and purchase what fits your brand.")

category_filter = st.text_input("Filter by keyword (optional)", placeholder="e.g. CLOTHES")

params = {"category": category_filter} if category_filter else {}
try:
    response = requests.get(f"{API_URL}/data-packs", params=params)
    response.raise_for_status()
    data_packs = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load data packs: {e}")
    data_packs = []

if data_packs:
    st.dataframe(data_packs, use_container_width=True)
else:
    st.info("No data packs match this filter.")

st.divider()

st.write("### Purchase a Data Pack")
if data_packs:
    pack_options = {f"{p['data_pack_id']} — {p['name']} (${p['price']})": p["data_pack_id"] for p in data_packs}
    selected_label = st.selectbox("Select a data pack", list(pack_options.keys()))

    if st.button("Purchase This Data Pack", type='primary'):
        try:
            response = requests.post(
                f"{API_URL}/{client_id}/data-receipts",
                json={"data_pack_id": pack_options[selected_label]},
            )
            response.raise_for_status()
            st.success("Data pack purchased! Check My Purchases to view or export it.")
        except requests.exceptions.RequestException as e:
            st.error(f"Could not purchase data pack: {e}")
