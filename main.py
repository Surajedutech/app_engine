import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    # Listen on port 8080 (App Engine uses 8080 by default)
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
