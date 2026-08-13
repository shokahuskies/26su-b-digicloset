# DigiCloset

DigiCloset is a digital wardrobe app that helps users catalogue their clothing, build outfits from what they already own, and get recommendations on wearing existing pieces instead of buying new ones. The project also includes an admin view for managing user accounts and tracking/resolving reported issues, and a client-facing view for browsing and purchasing user data packs.

**Team:** Amy Shok ([@shokahuskies](https://github.com/shokahuskies)) · Alan Chau ([@achau2511](https://github.com/achau2511)) · Grace Shang ([@gs-shang](https://github.com/gs-shang))

**Demo video:** _link coming soon_

This repo is built on top of the CS 3200 course project template, which provides the infrastructure setup (containers), and example UI pages.

## Prerequisites

See [docs/PreReq.md](docs/PreReq.md) for full setup instructions, including Python environment setup with Anaconda/Miniconda or the standard Python virtual environment tool, required tools, and IDE configuration.

A full index of the project documentation is in [docs/README.md](docs/README.md).

## Structure of the Repo

- This repository is organized into six main directories:
  - `./app` - the Streamlit app
  - `./api` - the Flask REST API
  - `./database-files` - SQL scripts to initialize the MySQL database
  - `./datasets` - folder for storing datasets
  - `./ml-src` - folder for ML model development (Jupyter notebooks, training scripts)
  - `./docs` - project documentation

- The repo also contains a `docker-compose.yaml` file that is used to set up the Docker containers for the front end app, the REST API, and MySQL database.

## Suggestion for Learning the Project Code Base

If you are not familiar with web app development, this code base might be confusing. But don't worry, we'll get through it together. Here are some suggestions for learning the code base:

1. Start by exploring the `./app` directory. This is where the Streamlit app is located. The Streamlit app is a Python-based web app that is used to interact with the user. It's a great way to build a simple web app without having to learn a lot of web development.
1. Next, explore the `./api` directory. This is where the Flask REST API is located. The REST API is used to interact with the database and perform other server-side tasks. You might also consider this the "application logic" or "business logic" layer of your app.
1. Finally, explore the `./database-files` directory. This is where the SQL scripts are located that will be used to initialize the MySQL database.
1. Bonus: If you want a totally separate copy of the template repo on your laptop to explore and experiment with without affecting your team repo, see the *Setting Up a Personal Sandbox Repo* section in [docs/RepoSetup.md](docs/RepoSetup.md).

## Setting Up the Repos

See [docs/RepoSetup.md](docs/RepoSetup.md) for full instructions on forking and configuring the team repo, setting up the `.env` file, and running the Docker containers. An optional section there also covers setting up a personal sandbox repo for individual experimentation.

## Important Tips

See [docs/ImportantTips.md](docs/ImportantTips.md) for tips on hot reloading, recovering from container crashes, and working with the MySQL container — including why you need the `-v` flag to pick up changes to your SQL files.

## Handling User Role Access and Control

This project uses a simple Role-based Access Control (RBAC) system implemented in Streamlit. The template ships with example roles (*Political Strategist*, *USAID Worker*, *System Administrator*) to illustrate the pattern — **your team will replace these with the personas specific to your project**. You will define four personas and implement three of them.

See [docs/RBAC.md](docs/RBAC.md) for a full explanation of how the RBAC system works and step-by-step instructions for adapting it to your own roles.

## Changing How the App Looks

The app's colors, fonts, and sidebar styling all come from `app/src/.streamlit/config.toml` — there is no CSS to edit. Save the file and the running app picks the change up; refresh the browser tab if you don't see it.

See [docs/Theming.md](docs/Theming.md) for what each setting does and how to build your own palette.
