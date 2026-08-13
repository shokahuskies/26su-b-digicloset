from flask import Blueprint, jsonify, request
from backend.db_connection import get_db
from mysql.connector import Error

# Create a Blueprint for admin routes (issue tracking + user account management)
admin = Blueprint("admin", __name__)


# Get all issues, optionally filtered by status or category
# Example: /admin/issues?status=0&category=SECURITY
@admin.route("/issues", methods=["GET"])
def get_issues():
    cursor = get_db().cursor(dictionary=True)
    try:
        status = request.args.get("status")
        category = request.args.get("category")

        query = "SELECT * FROM Issue WHERE 1=1"
        params = []
        if status is not None:
            query += " AND status = %s"
            params.append(status)
        if category:
            query += " AND category = %s"
            params.append(category)

        cursor.execute(query, params)
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Get a single issue's detail
# Example: /admin/issues/193
@admin.route("/issues/<int:issue_id>", methods=["GET"])
def get_issue(issue_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT * FROM Issue WHERE issue_id = %s", (issue_id,))
        issue = cursor.fetchone()
        if not issue:
            return jsonify({"error": "Issue not found"}), 404
        return jsonify(issue), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Create a new issue report. Used both when a User reports an app bug
# (with user_id set) and when a Client contacts support (with client_id set).
# Required fields: issue_id, category, description
# Example: POST /admin/issues with JSON body
@admin.route("/issues", methods=["POST"])
def create_issue():
    cursor = get_db().cursor(dictionary=True)
    try:
        data = request.get_json()

        required_fields = ["issue_id", "category", "description"]
        for field in required_fields:
            if field not in data:
                return jsonify({"error": f"Missing required field: {field}"}), 400

        cursor.execute(
            "INSERT INTO Issue (issue_id, category, description, status, client_id, user_id) VALUES (%s, %s, %s, FALSE, %s, %s)",
            (data["issue_id"], data["category"], data["description"], data.get("client_id"), data.get("user_id")),
        )

        get_db().commit()
        return jsonify({"message": "Issue created successfully", "issue_id": data["issue_id"]}), 201
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Update an issue's status (e.g. mark resolved)
# Example: PUT /admin/issues/193 with JSON body {"status": true}
@admin.route("/issues/<int:issue_id>", methods=["PUT"])
def update_issue(issue_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT issue_id FROM Issue WHERE issue_id = %s", (issue_id,))
        if not cursor.fetchone():
            return jsonify({"error": "Issue not found"}), 404

        data = request.get_json()
        if "status" not in data:
            return jsonify({"error": "Missing required field: status"}), 400

        cursor.execute("UPDATE Issue SET status = %s WHERE issue_id = %s", (data["status"], issue_id))
        get_db().commit()
        return jsonify({"message": "Issue updated successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Get all user accounts
# Example: /admin/users
@admin.route("/users", methods=["GET"])
def get_users():
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT * FROM General_User")
        return jsonify(cursor.fetchall()), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()


# Delete a user account
# Example: DELETE /admin/users/1
@admin.route("/users/<int:user_id>", methods=["DELETE"])
def delete_user(user_id):
    cursor = get_db().cursor(dictionary=True)
    try:
        cursor.execute("SELECT user_id FROM General_User WHERE user_id = %s", (user_id,))
        if not cursor.fetchone():
            return jsonify({"error": "User not found"}), 404

        cursor.execute("DELETE FROM General_User WHERE user_id = %s", (user_id,))
        get_db().commit()
        return jsonify({"message": "User account deleted successfully"}), 200
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
