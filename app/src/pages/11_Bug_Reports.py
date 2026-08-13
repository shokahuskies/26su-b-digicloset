import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

API_URL = "http://web-api:4000/admin/issues"

st.title("Bug Reports")
st.write("Track and resolve issues reported by users and clients.")

col1, col2 = st.columns(2)
with col1:
    status_filter = st.selectbox("Filter by status", ["All", "Unresolved", "Resolved"])
with col2:
    category_filter = st.text_input("Filter by category (optional)")

params = {}
if status_filter == "Unresolved":
    params["status"] = 0
elif status_filter == "Resolved":
    params["status"] = 1
if category_filter:
    params["category"] = category_filter

try:
    response = requests.get(API_URL, params=params)
    response.raise_for_status()
    issues = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Could not load issues: {e}")
    issues = []

if issues:
    st.dataframe(issues, use_container_width=True)
else:
    st.info("No issues match this filter.")

st.divider()

st.write("### Resolve an Issue")
if issues:
    issue_ids = [i["issue_id"] for i in issues]
    selected_id = st.selectbox("Select an issue by ID", issue_ids)

    try:
        detail_response = requests.get(f"{API_URL}/{selected_id}")
        detail_response.raise_for_status()
        issue_detail = detail_response.json()
        st.write(f"**Category:** {issue_detail['category']}")
        st.write(f"**Description:** {issue_detail['description']}")
        st.write(f"**Status:** {'Resolved' if issue_detail['status'] else 'Unresolved'}")
    except requests.exceptions.RequestException as e:
        st.error(f"Could not load issue detail: {e}")

    if st.button("Mark as Resolved", type='primary'):
        try:
            response = requests.put(f"{API_URL}/{selected_id}", json={"status": True})
            response.raise_for_status()
            st.success("Issue marked as resolved!")
            st.rerun()
        except requests.exceptions.RequestException as e:
            st.error(f"Could not update issue: {e}")
