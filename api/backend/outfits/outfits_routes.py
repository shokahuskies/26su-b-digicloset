from flask import Blueprint, jsonify, request
from backend.db_connection import get_db
from mysql.connector import Error

# Create a Blueprint for outfit routes
outfits = Blueprint("outfits", __name__)


# Get all outfits belonging to a specific user
# Example: /outfits/users/1
@outfits.route("/users/<int:user_id>", methods=["GET"])
def get_user_outfits(user_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT user_id FROM General_User WHERE user_id = %s", (user_id,))
        if not cursor.fetchone():
            return jsonify({"error": "User not found"}), 404

        cursor.execute("SELECT * FROM Outfits WHERE user_id = %s", (user_id,))
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Get a single outfit's detail, including every clothing piece assigned to it
# Example: /outfits/1
@outfits.route("/<int:outfit_id>", methods=["GET"])
def get_outfit(outfit_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT * FROM Outfits WHERE outfit_id = %s", (outfit_id,))
        outfit = cursor.fetchone()
        if not outfit:
            return jsonify({"error": "Outfit not found"}), 404

        cursor.execute(
            """
            SELECT Clothing.*
            FROM Clothing
            JOIN Pieces ON Clothing.clothing_id = Pieces.clothing_id
            WHERE Pieces.outfit_id = %s
            """,
            (outfit_id,),
        )
        outfit["pieces"] = cursor.fetchall()
        return jsonify(outfit), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Create a new outfit and assign one or more clothing pieces to it
# Required fields: outfit_id, season, occasion, user_id, clothing_ids (list)
# Example: POST /outfits with JSON body
@outfits.route("", methods=["POST"])
def create_outfit():
    cursor = get_db().cursor(dictionary=True)
    try:
        data = request.get_json()

        required_fields = ["outfit_id", "season", "occasion", "user_id", "clothing_ids"]
        for field in required_fields:
            if field not in data:
                return jsonify({"error": f"Missing required field: {field}"}), 400

        cursor.execute(
            """
            INSERT INTO Outfits (outfit_id, season, create_date, occasion, times_worn_month, times_worn_total, user_id, fash_user)
            VALUES (%s, %s, CURDATE(), %s, 0, 0, %s, %s)
            """,
            (data["outfit_id"], data["season"], data["occasion"], data["user_id"], data.get("fash_user")),
        )

        for clothing_id in data["clothing_ids"]:
            cursor.execute(
                "INSERT INTO Pieces (clothing_id, outfit_id) VALUES (%s, %s)",
                (clothing_id, data["outfit_id"]),
            )

        get_db().commit()
        return jsonify({"message": "Outfit created successfully", "outfit_id": data["outfit_id"]}), 201
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Update an outfit, e.g. record that it was worn
# Editable fields: season, occasion, last_worn, times_worn_month, times_worn_total
# Example: PUT /outfits/1 with JSON body
@outfits.route("/<int:outfit_id>", methods=["PUT"])
def update_outfit(outfit_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT outfit_id FROM Outfits WHERE outfit_id = %s", (outfit_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Outfit not found"}), 404

        data = request.get_json()
        editable_fields = ["season", "occasion", "last_worn", "times_worn_month", "times_worn_total"]
        updates = {field: data[field] for field in editable_fields if field in data}
        if not updates:
            return jsonify({"error": "No editable fields provided"}), 400

        set_clause = ", ".join(f"{field} = %s" for field in updates)
        query = f"UPDATE Outfits SET {set_clause} WHERE outfit_id = %s"
        cursor.execute(query, (*updates.values(), outfit_id))

        get_db().commit()
        return jsonify({"message": "Outfit updated successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Delete an outfit (also removes its clothing-piece assignments)
# Example: DELETE /outfits/1
@outfits.route("/<int:outfit_id>", methods=["DELETE"])
def delete_outfit(outfit_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT outfit_id FROM Outfits WHERE outfit_id = %s", (outfit_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Outfit not found"}), 404

        cursor.execute("DELETE FROM Outfits WHERE outfit_id = %s", (outfit_id,))
        get_db().commit()
        return jsonify({"message": "Outfit deleted successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
