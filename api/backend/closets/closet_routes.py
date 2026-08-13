from flask import Blueprint, jsonify, request
from backend.db_connection import get_db
from mysql.connector import Error

# Create a Blueprint for closet/clothing routes
closet = Blueprint("closet", __name__)


# Get all clothing items belonging to a specific user
# Example: /closet/users/1/clothing
@closet.route("/users/<int:user_id>/clothing", methods=["GET"])
def get_user_clothing(user_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT user_id FROM General_User WHERE user_id = %s", (user_id,))
        if not cursor.fetchone():
            return jsonify({"error": "User not found"}), 404

        cursor.execute("SELECT * FROM Clothing WHERE user_id = %s", (user_id,))
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()



# Create a new clothing item
# Required fields: brand, clothing_id, image, name, type, user_id
# Example: POST /closet/users/clothing with JSON body

@closet.route("/clothing", methods=["POST"])
def create_clothing():
    cursor = get_db().cursor(dictionary=True)
    try:
        data = request.get_json()

        required_fields = ["brand", "clothing_id", "image", "name", "type", "user_id"]
        for field in required_fields:
            if field not in data:
                return jsonify({"error": f"Missing required field: {field}"}), 400

        query = """
            INSERT INTO Clothing (brand, clothing_id, image, name, type, user_id)
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        cursor.execute(query, (
            data["brand"],
            data["clothing_id"],
            data["image"],
            data["name"],
            data["type"],
            data["user_id"],
        ))

        get_db().commit()
        return jsonify({"message": "Clothes created successfully", "clothing_id": data["clothing_id"]}), 201
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Get a single clothing item's detail
# Example: /closet/clothing/1
@closet.route("/clothing/<int:clothing_id>", methods=["GET"])
def get_clothing(clothing_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT * FROM Clothing WHERE clothing_id = %s", (clothing_id,))
        item = cursor.fetchone()
        if not item:
            return jsonify({"error": "Clothing item not found"}), 404
        return jsonify(item), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Update an existing clothing item
# Editable fields: brand, image, name, type
# Example: PUT /closet/clothing/1 with JSON body
@closet.route("/clothing/<int:clothing_id>", methods=["PUT"])
def update_clothing(clothing_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT clothing_id FROM Clothing WHERE clothing_id = %s", (clothing_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Clothing item not found"}), 404

        data = request.get_json()
        editable_fields = ["brand", "image", "name", "type"]
        updates = {field: data[field] for field in editable_fields if field in data}
        if not updates:
            return jsonify({"error": "No editable fields provided"}), 400

        set_clause = ", ".join(f"{field} = %s" for field in updates)
        query = f"UPDATE Clothing SET {set_clause} WHERE clothing_id = %s"
        cursor.execute(query, (*updates.values(), clothing_id))

        get_db().commit()
        return jsonify({"message": "Clothing item updated successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Delete a clothing item
# Example: DELETE /closet/clothing/1
@closet.route("/clothing/<int:clothing_id>", methods=["DELETE"])
def delete_clothing(clothing_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT clothing_id FROM Clothing WHERE clothing_id = %s", (clothing_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Clothing item not found"}), 404

        cursor.execute("DELETE FROM Clothing WHERE clothing_id = %s", (clothing_id,))
        get_db().commit()
        return jsonify({"message": "Clothing item deleted successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()

