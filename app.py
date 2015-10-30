from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
@app.route("/<name>")
def hello(name=None):
    return render_template('index.html', name=name), 200

if __name__ == "__main__":
    app.run()
