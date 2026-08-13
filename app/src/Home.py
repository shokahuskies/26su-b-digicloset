##################################################
# This is the main/entry-point file for the
# sample application for your project
##################################################

# Set up basic logging infrastructure
import logging
logging.basicConfig(format='%(filename)s:%(lineno)s:%(levelname)s -- %(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

# import the main streamlit library as well
# as SideBarLinks function from src/modules folder
import streamlit as st
from modules.closet_nav import SideBarLinks

# streamlit supports regular and wide layout (how the controls
# are organized/displayed on the screen).
st.set_page_config(layout='wide')

# If a user is at this page, we assume they are not
# authenticated.  So we change the 'authenticated' value
# in the streamlit session_state to false.
st.session_state['authenticated'] = False

# Use the SideBarLinks function from src/modules/nav.py to control
# the links displayed on the left-side panel.
# IMPORTANT: ensure src/.streamlit/config.toml sets
# showSidebarNavigation = false in the [client] section
SideBarLinks(show_home=True)

# ***************************************************
#    The major content of this page
# ***************************************************

logger.info("Loading the Home page of the app")

# Styling for the "who's signing in" profile picker below: a round,
# initialed avatar per persona that scales slightly on hover, sitting
# above a plain, pill-shaped select button.
st.markdown("""
    <style>
    .profile-avatar {
        width: 130px;
        height: 130px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 1rem auto;
        font-family: serif;
        font-size: 3rem;
        font-weight: 600;
        color: white;
        transition: transform 0.15s ease-in-out;
    }
    .profile-avatar:hover {
        transform: scale(1.06);
    }
    .profile-name {
        text-align: center;
        font-size: 1.25rem;
        margin-bottom: 0.1rem;
    }
    .profile-role {
        text-align: center;
        color: #8a8a8a;
        font-size: 0.85rem;
        margin-bottom: 0.9rem;
    }
    div[data-testid="stButton"] button {
        border-radius: 999px;
    }
    </style>
""", unsafe_allow_html=True)

st.markdown("<h1 style='text-align: center;'>DigiCloset</h1>", unsafe_allow_html=True)
st.markdown(
    "<p style='text-align: center; font-size: 1.1rem;'>Who's signing in?</p>",
    unsafe_allow_html=True,
)
st.write('')

# For each of the user personas for which we are implementing
# functionality, we show a circular avatar and, below it, a button that
# the user can click to MIMIC logging in as that mock user.

emily_col, adam_col, joelle_col = st.columns(3)

with emily_col:
    st.markdown(
        """
        <div class="profile-avatar" style="background-color: #2C6E63;">EK</div>
        <div class="profile-name">Emily Kang</div>
        <div class="profile-role">DigiCloset User</div>
        """,
        unsafe_allow_html=True,
    )
    if st.button('Sign in as Emily', type='primary', use_container_width=True):
        # when user clicks the button, they are now considered authenticated
        st.session_state['authenticated'] = True
        # we set the role of the current user
        st.session_state['role'] = 'user'
        # we add the first name of the user (so it can be displayed on
        # subsequent pages), plus their user_id for API calls.
        st.session_state['first_name'] = 'Emily'
        st.session_state['user_id'] = 1
        # finally, we ask streamlit to switch to another page, in this case, the
        # landing page for this particular user type
        logger.info("Logging in as User Persona")
        st.switch_page('pages/00_User_Home.py')

with adam_col:
    st.markdown(
        """
        <div class="profile-avatar" style="background-color: #4A5B7A;">A</div>
        <div class="profile-name">Adam</div>
        <div class="profile-role">System Administrator</div>
        """,
        unsafe_allow_html=True,
    )
    if st.button('Sign in as Adam', type='primary', use_container_width=True):
        st.session_state['authenticated'] = True
        st.session_state['role'] = 'administrator'
        st.session_state['first_name'] = 'Adam'
        logger.info("Logging in as Administrator Persona")
        st.switch_page('pages/10_Admin_Home.py')

with joelle_col:
    st.markdown(
        """
        <div class="profile-avatar" style="background-color: #B5734A;">JF</div>
        <div class="profile-name">Joellé Fash</div>
        <div class="profile-role">Data-Purchasing Client</div>
        """,
        unsafe_allow_html=True,
    )
    if st.button('Sign in as Joellé', type='primary', use_container_width=True):
        st.session_state['authenticated'] = True
        st.session_state['role'] = 'client'
        st.session_state['first_name'] = 'Joellé'
        st.session_state['client_id'] = 1
        logger.info("Logging in as Client Persona")
        st.switch_page('pages/20_Client_Home.py')
