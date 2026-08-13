import streamlit as st
from modules.closet_nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.write("# About DigiCloset")

st.markdown(
    """
    DigiCloset is a digital closet app that lets users catalogue their wardrobe,
    plan outfits, and build combinations from clothes they already own —
    built for the CS 3200 Summer B 2026 Database Design Project.
    """
)

# Add a button to return to home page
if st.button("Return to Home", type="primary"):
    st.switch_page("Home.py")
