from flask import Blueprint, jsonify, request
from backend.db_connection import get_db
from mysql.connector import Error

# Create a Blueprint for client routes (data-pack browsing + purchases)
clients = Blueprint("clients", __name__)


# Get all available data packs, optionally filtered by a name/category keyword
# Example: /clients/data-packs?category=CLOTHES
@clients.route("/data-packs", methods=["GET"])
def get_data_packs():
    cursor = get_db().cursor(dictionary=True)
    try:
        category = request.args.get("category")

        query = "SELECT * FROM User_Data_Pack WHERE 1=1"
        params = []
        if category:
            query += " AND name LIKE %s"
            params.append(f"%{category}%")

        cursor.execute(query, params)
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Get the data packs a client has purchased
# Example: /clients/1/data-receipts
@clients.route("/<int:client_id>/data-receipts", methods=["GET"])
def get_client_receipts(client_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT client_id FROM Client WHERE client_id = %s", (client_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Client not found"}), 404

        cursor.execute(
            """
            SELECT User_Data_Pack.*
            FROM User_Data_Pack
            JOIN Data_Receipt ON User_Data_Pack.data_pack_id = Data_Receipt.data_pack_id
            WHERE Data_Receipt.client_id = %s
            """,
            (client_id,),
        )
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Purchase a data pack on behalf of a client
# Required fields: data_pack_id
# Example: POST /clients/1/data-receipts with JSON body
@clients.route("/<int:client_id>/data-receipts", methods=["POST"])
def create_client_receipt(client_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT client_id FROM Client WHERE client_id = %s", (client_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Client not found"}), 404

        data = request.get_json()
        if "data_pack_id" not in data:
            return jsonify({"error": "Missing required field: data_pack_id"}), 400

        cursor.execute(
            "INSERT INTO Data_Receipt (client_id, data_pack_id) VALUES (%s, %s)",
            (client_id, data["data_pack_id"]),
        )

        get_db().commit()
        return jsonify({"message": "Data pack purchased successfully"}), 201
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Update a client's company info / subscription package level
# Editable fields: company_name, package_level
# Example: PUT /clients/1 with JSON body
@clients.route("/<int:client_id>", methods=["PUT"])
def update_client(client_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT client_id FROM Client WHERE client_id = %s", (client_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Client not found"}), 404

        data = request.get_json()
        editable_fields = ["company_name", "package_level"]
        updates = {field: data[field] for field in editable_fields if field in data}
        if not updates:
            return jsonify({"error": "No editable fields provided"}), 400

        set_clause = ", ".join(f"{field} = %s" for field in updates)
        query = f"UPDATE Client SET {set_clause} WHERE client_id = %s"
        cursor.execute(query, (*updates.values(), client_id))

        get_db().commit()
        return jsonify({"message": "Client updated successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Cancel/remove a purchased data pack
# Example: DELETE /clients/1/data-receipts/2
@clients.route("/<int:client_id>/data-receipts/<int:data_pack_id>", methods=["DELETE"])
def delete_client_receipt(client_id, data_pack_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute(
            "SELECT client_id FROM Data_Receipt WHERE client_id = %s AND data_pack_id = %s",
            (client_id, data_pack_id),
        )
        if not cursor.fetchone():
            return jsonify({"error": "Data receipt not found"}), 404

        cursor.execute(
            "DELETE FROM Data_Receipt WHERE client_id = %s AND data_pack_id = %s",
            (client_id, data_pack_id),
        )
        get_db().commit()
        return jsonify({"message": "Data pack purchase removed successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
