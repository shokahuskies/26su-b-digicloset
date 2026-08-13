import logging
logger = logging.getLogger(__name__)

import random
import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

CLIENTS_API = "http://web-api:4000/clients"
ISSUES_API = "http://web-api:4000/admin/issues"
client_id = st.session_state['client_id']

st.title("Account & Support")

st.write("### Update My Account")
with st.form("update_account_form"):
    company_name = st.text_input("Company Name")
    package_level = st.number_input("Package Level", min_value=0, step=1)
    account_submitted = st.form_submit_button("Save Account Info", type='primary')

    if account_submitted:
        updates = {}
        if company_name:
            updates["company_name"] = company_name
        updates["package_level"] = int(package_level)
        try:
            response = requests.put(f"{CLIENTS_API}/{client_id}", json=updates)
            response.raise_for_status()
            st.success("Account info updated!")
        except requests.exceptions.RequestException as e:
            st.error(f"Could not update account: {e}")

st.divider()

st.write("### Contact Support")
with st.form("contact_support_form"):
    description = st.text_area("What do you need help with?")
    support_submitted = st.form_submit_button("Send to Support", type='primary')

    if support_submitted:
        if not description:
            st.error("Please describe your question before submitting.")
        else:
            try:
                response = requests.post(
                    ISSUES_API,
                    json={
                        "issue_id": random.randint(10000, 99999),
                        "category": "SUPPORT",
                        "description": description,
                        "client_id": client_id,
                    },
                )
                response.raise_for_status()
                st.success("Your support request has been sent!")
            except requests.exceptions.RequestException as e:
                st.error(f"Could not send support request: {e}")
