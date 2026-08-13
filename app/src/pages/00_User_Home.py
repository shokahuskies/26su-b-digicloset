import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.title(f"Welcome, {st.session_state['first_name']}.")
st.write('### What would you like to do today?')

if st.button('View & Manage My Closet',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/01_My_Closet.py')

if st.button('View & Plan My Outfits',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/02_My_Outfits.py')

if st.button('Report a Bug',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/03_Report_Bug.py')
