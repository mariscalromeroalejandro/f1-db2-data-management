# app.py
from flask import Flask, jsonify
import ibm_db
from config import DB_CONFIG

app = Flask(__name__)

# Connection string
conn_str = (
    f"DATABASE={DB_CONFIG['database']};"
    f"HOSTNAME={DB_CONFIG['hostname']};"
    f"PORT={DB_CONFIG['port']};"
    f"PROTOCOL=TCPIP;"
    f"UID={DB_CONFIG['username']};"
    f"PWD={DB_CONFIG['password']};"
)

def get_db_connection():
    conn = ibm_db.connect(conn_str, "", "")
    return conn

@app.route('/drivers', methods=['GET'])
def get_drivers():
    conn = get_db_connection()
    sql = """
    SELECT d.name, d.nationality, t.name as team 
    FROM Drivers d 
    JOIN Teams t ON d.team_id = t.team_id
    """
    stmt = ibm_db.exec_immediate(conn, sql)
    result = []

    while ibm_db.fetch_row(stmt) != False:
        result.append({
            "name": ibm_db.result(stmt, 0),
            "nationality": ibm_db.result(stmt, 1),
            "team": ibm_db.result(stmt, 2)
        })

    ibm_db.close(conn)
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)