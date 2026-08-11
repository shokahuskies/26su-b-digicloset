from flask import Blueprint, jsonify
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
