# REST API Matrix — DigiCloset

Personas moving forward to Phase 3: **Emily Kang (User)**, **Adam (Admin)**, **Joellé Fash (Client)**.
(Shawn/Fashionista is the 4th persona from Phase 1 — kept in the data model, not built out in Phase 3.)

## Blueprint: `closet` (prefix `/closet`) — Emily Kang, User

| User Story | Resource | Method | Synopsis |
|---|---|---|---|
| 1.1 Navigate my closet easily | `/closet/users/<user_id>/clothing` | GET | List all clothing items owned by a user |
| 1.1, 1.3 Sort/find clothes by style | `/closet/clothing/<clothing_id>` | GET | Get details of a single clothing item |
| 1.2 Update my closet | `/closet/clothing` | POST | Add a new clothing item to a user's closet |
| 1.2 Update my closet | `/closet/clothing/<clothing_id>` | PUT | Edit an existing clothing item (name/brand/type/image) |
| 1.2 Update my closet | `/closet/clothing/<clothing_id>` | DELETE | Remove a clothing item from the closet |

## Blueprint: `outfits` (prefix `/outfits`) — Emily Kang, User

| User Story | Resource | Method | Synopsis |
|---|---|---|---|
| 1.4 Recommend clothes I already own vs. a new purchase | `/outfits/users/<user_id>` | GET | List a user's saved outfits |
| 1.5 Multiple accessories per outfit | `/outfits/<outfit_id>` | GET | Get an outfit's detail, including every clothing piece assigned to it |
| 1.5 Multiple accessories per outfit | `/outfits` | POST | Create a new outfit and assign one or more clothing pieces to it |
| Supports 1.1/1.3 (track last worn) | `/outfits/<outfit_id>` | PUT | Update an outfit (e.g. record `last_worn`, bump `times_worn_month`/`times_worn_total`) |
| Closet cleanup | `/outfits/<outfit_id>` | DELETE | Delete an outfit |

## Blueprint: `admin` (prefix `/admin`) — Adam, Admin

| User Story | Resource | Method | Synopsis |
|---|---|---|---|
| 3.1, 3.4, 3.6 Track bugs / review logs / security alerts | `/admin/issues` | GET | List all issues, filterable by `?status=` or `?category=` |
| 3.1 Track bugs | `/admin/issues/<issue_id>` | GET | Get a single issue's detail |
| 1.6, 4.6 Report a bug / contact support | `/admin/issues` | POST | Create a new issue (used by both the User bug-report flow and the Client support flow) |
| 3.1 Resolve bugs | `/admin/issues/<issue_id>` | PUT | Update an issue's status (e.g. mark resolved) |
| 3.2 Manage user accounts | `/admin/users` | GET | List all `General_User` accounts |
| 3.2 Manage user accounts | `/admin/users/<user_id>` | DELETE | Delete a user account |

## Blueprint: `clients` (prefix `/clients`) — Joellé Fash, Client

| User Story | Resource | Method | Synopsis |
|---|---|---|---|
| 4.2, 4.5 See available data + price | `/clients/data-packs` | GET | List all data packs (name, price), filterable by `?category=` for 4.3 |
| 4.4 Download/export purchased data | `/clients/<client_id>/data-receipts` | GET | List the data packs a client has purchased |
| 4.1 Purchase user data | `/clients/<client_id>/data-receipts` | POST | Record a new data-pack purchase for a client |
| Account maintenance | `/clients/<client_id>` | PUT | Update a client's company info / package level |
| Cancel a purchase | `/clients/<client_id>/data-receipts/<data_pack_id>` | DELETE | Remove a data-pack purchase from a client's receipts |

## Totals
- 4 blueprints, 21 routes
- GET: 11, POST: 3, PUT: 3, DELETE: 3 — clears the ≥2 POST/PUT/DELETE minimum, no verb repeated within a single blueprint
- Every blueprint has ≥5 routes

## Note on removed scope
The `ngos` blueprint (`WorldNGOs`/`Projects`/`Donors`) and its 3 Streamlit pages are course-template sample code with no connection to any DigiCloset persona or user story — they query a separate, disconnected `ngo_db` database. They are being removed rather than mapped into this matrix.
