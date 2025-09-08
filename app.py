from flask import Flask, request, render_template, redirect
import mysql.connector

app = Flask(__name__)

# Replace these with your RDS details
DB_HOST = "YOUR_RDS_ENDPOINT"
DB_USER = "admin"
DB_PASSWORD = "YOUR_PASSWORD"
DB_NAME = "todos"

def get_db():
    return mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )

@app.route("/")
def index():
    db = get_db()
    cursor = db.cursor()
    cursor.execute("SELECT id, task FROM todo;")
    tasks = cursor.fetchall()
    cursor.close()
    db.close()
    return render_template("index.html", tasks=tasks)

@app.route("/add", methods=["POST"])
def add():
    task = request.form["task"]
    db = get_db()
    cursor = db.cursor()
    cursor.execute("INSERT INTO todo (task) VALUES (%s)", (task,))
    db.commit()
    cursor.close()
    db.close()
    return redirect("/")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug= True)
