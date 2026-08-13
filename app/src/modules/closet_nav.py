# Idea borrowed from https://github.com/fsmosca/sample-streamlit-authenticator

# This file has functions to add links to the left sidebar based on the user's role.

import streamlit as st


# ---- General ----------------------------------------------------------------

def home_nav():
    st.sidebar.page_link("Home.py", label="Home", icon="🏠")


def about_page_nav():
    st.sidebar.page_link("pages/31_Closet_About.py", label="About", icon="🧠")


# ---- Role: user (Emily Kang) -------------------------------------------------

def user_home_nav():
    st.sidebar.page_link("pages/00_User_Home.py", label="My DigiCloset", icon="👤")


def my_closet_nav():
    st.sidebar.page_link("pages/01_My_Closet.py", label="My Closet", icon="👕")


def my_outfits_nav():
    st.sidebar.page_link("pages/02_My_Outfits.py", label="My Outfits", icon="🧥")


def report_bug_nav():
    st.sidebar.page_link("pages/03_Report_Bug.py", label="Report a Bug", icon="🐛")


# ---- Role: administrator (Adam) ----------------------------------------------

def admin_home_nav():
    st.sidebar.page_link("pages/10_Admin_Home.py", label="Admin Home", icon="🖥️")


def bug_reports_nav():
    st.sidebar.page_link("pages/11_Bug_Reports.py", label="Bug Reports", icon="🐞")


def manage_users_nav():
    st.sidebar.page_link("pages/12_Manage_Users.py", label="Manage User Accounts", icon="🗂️")


# ---- Role: client (Joellé Fash) ----------------------------------------------

def client_home_nav():
    st.sidebar.page_link("pages/20_Client_Home.py", label="Client Home", icon="💼")


def browse_data_packs_nav():
    st.sidebar.page_link("pages/21_Browse_Data_Packs.py", label="Browse Data Packs", icon="📦")


def my_purchases_nav():
    st.sidebar.page_link("pages/22_My_Purchases.py", label="My Purchases", icon="🧾")


def account_support_nav():
    st.sidebar.page_link("pages/23_Account_Support.py", label="Account & Support", icon="✉️")


# ---- Sidebar assembly -------------------------------------------------------

def SideBarLinks(show_home=False):
    """
    Renders sidebar navigation links based on the logged-in user's role.
    The role is stored in st.session_state when the user logs in on Home.py.
    """

    # Logo appears at the top of the sidebar on every page
    st.sidebar.image("assets/logo.png", width=150)

    # If no one is logged in, send them to the Home (login) page
    if "authenticated" not in st.session_state:
        st.session_state.authenticated = False
        st.switch_page("Home.py")

    if show_home:
        home_nav()

    if st.session_state["authenticated"]:

        if st.session_state["role"] == "user":
            user_home_nav()
            my_closet_nav()
            my_outfits_nav()
            report_bug_nav()

        if st.session_state["role"] == "administrator":
            admin_home_nav()
            bug_reports_nav()
            manage_users_nav()

        if st.session_state["role"] == "client":
            client_home_nav()
            browse_data_packs_nav()
            my_purchases_nav()
            account_support_nav()

    # About link appears at the bottom for all roles
    about_page_nav()

    if st.session_state["authenticated"]:
        if st.sidebar.button("Logout"):
            del st.session_state["role"]
            del st.session_state["authenticated"]
            st.switch_page("Home.py")
