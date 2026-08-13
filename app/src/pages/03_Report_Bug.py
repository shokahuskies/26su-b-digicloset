import logging
logger = logging.getLogger(__name__)

import random
import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/admin/issues"
user_id = st.session_state['user_id']

st.title("Report a Bug")
st.write("Running into a problem in the app? Let us know and we'll take a look.")

with st.form("report_bug_form"):
    category = st.selectbox("Category", ["APP", "ACCOUNT", "CLOSET", "OUTFITS", "OTHER"])
    description = st.text_area("Describe the issue")
    submitted = st.form_submit_button("Submit Bug Report", type='primary')

    if submitted:
        if not description:
            st.error("Please describe the issue before submitting.")
        else:
            try:
                response = requests.post(
                    API_URL,
                    json={
                        "issue_id": random.randint(10000, 99999),
                        "category": category,
                        "description": description,
                        "user_id": user_id,
                    },
                )
                response.raise_for_status()
                st.success("Thanks! Your bug report has been submitted.")
            except requests.exceptions.RequestException as e:
                st.error(f"Could not submit bug report: {e}")
