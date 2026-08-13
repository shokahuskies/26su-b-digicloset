import logging
logger = logging.getLogger(__name__)

import json
import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/clients"
client_id = st.session_state['client_id']

st.title("My Purchases")
st.write("View the data packs you've purchased, and export them for use in your own systems.")

try:
    response = requests.get(f"{API_URL}/{client_id}/data-receipts")
    response.raise_for_status()
    purchases = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load your purchases: {e}")
    purchases = []

if purchases:
    st.dataframe(purchases, use_container_width=True)
    st.download_button(
        "Export My Purchased Data (JSON)",
        data=json.dumps(purchases, indent=2, default=str),
        file_name="digicloset_data_export.json",
        mime="application/json",
    )
else:
    st.info("You haven't purchased any data packs yet — head to Browse Data Packs to get started.")

st.divider()

st.write("### Cancel a Purchase")
if purchases:
    pack_options = {f"{p['data_pack_id']} — {p['name']}": p["data_pack_id"] for p in purchases}
    selected_label = st.selectbox("Select a purchase to cancel", list(pack_options.keys()))

    if st.button("Cancel This Purchase", type='primary'):
        try:
            response = requests.delete(f"{API_URL}/{client_id}/data-receipts/{pack_options[selected_label]}")
            response.raise_for_status()
            st.success("Purchase cancelled!")
            st.rerun()
        except requests.exceptions.RequestException as e:
            st.error(f"Could not cancel purchase: {e}")
