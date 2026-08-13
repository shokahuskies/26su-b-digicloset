import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.title(f"Welcome, {st.session_state['first_name']}.")
st.write('### What would you like to do today?')

if st.button('Review Bug Reports',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/11_Bug_Reports.py')

if st.button('Manage User Accounts',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/12_Manage_Users.py')
