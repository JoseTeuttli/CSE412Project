from flask import Flask, request
from flask.templating import render_template
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(host="localhost", port=5432,
                        database="postgres", user="postgres", password="password")
cur = conn.cursor()
# cur.execute("""SELECT * FROM artist""")
# query_results = cur.fetchall()


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/submit', methods=['POST'])
def submit():
    # fetch a certain student2
    sql_query = request.form['sql_query']
    cur.execute(sql_query)

    query_results = str(cur.fetchall())
    return render_template('success.html', data=query_results)


if __name__ == '__main__':  # python interpreter assigns "__main__" to the file you run
    app.run(debug=True)


# def hello_world():
#     return render_template('index.html')


# def sql_query():
#     cur.execute("""SELECT * FROM artist""")
#     query_results = cur.fetchall()
#     return "<p>"+str(query_results)+"<\p>"


if __name__ == '__main__':
    app.run()
