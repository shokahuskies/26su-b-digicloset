import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.title(f"Welcome, {st.session_state['first_name']}.")
st.write('### What would you like to do today?')

if st.button('Browse Data Packs',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/21_Browse_Data_Packs.py')

if st.button('View My Purchases',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/22_My_Purchases.py')

if st.button('Account & Support',
             type='primary',
             use_container_width=True):
    st.switch_page('pages/23_Account_Support.py')
