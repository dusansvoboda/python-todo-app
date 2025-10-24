from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # We'll change this text later to prove our pipeline works
    return "Hello from our K3s Cluster! Version 1.0\n"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
