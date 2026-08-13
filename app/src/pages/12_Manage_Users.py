import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/admin/users"

st.title("Manage User Accounts")
st.write("View all DigiCloset user accounts and remove any that need to be deleted.")

try:
    response = requests.get(API_URL)
    response.raise_for_status()
    users = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load user accounts: {e}")
    users = []

if users:
    st.dataframe(users, use_container_width=True)
else:
    st.info("No user accounts found.")

st.divider()

st.write("### Delete a User Account")
if users:
    user_ids = [u["user_id"] for u in users]
    selected_user_id = st.selectbox("Select a user by ID", user_ids)

    if st.button("Delete This Account", type='primary'):
        try:
            response = requests.delete(f"{API_URL}/{selected_user_id}")
            response.raise_for_status()
            st.success("User account deleted!")
            st.rerun()
        except requests.exceptions.RequestException as e:
            st.error(f"Could not delete user account: {e}")
