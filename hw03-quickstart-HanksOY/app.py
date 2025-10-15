from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

@app.route("/waddayaknow", methods=["GET"])
def know():
    return "Not much, you?\n"

@app.route("/post-demo", methods=["GET", "POST"])
def post_demo():
    if request.method != "POST":
        return "That wasn't a POST request"
    return jsonify(request.form.to_dict())

@app.route("/form-demo", methods=["GET", "POST"])
def form_demo():
    if request.method == "POST":
        return jsonify(request.form.to_dict())
    return render_template("form.html")

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8000, debug=True)