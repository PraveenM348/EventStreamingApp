from flask import Flask, request, jsonify
import util

app = Flask(__name__)

@app.route('/api/get_events', methods=['GET'])
def get_events():
    response = jsonify({
        'events': util.get_events()
    })
    response.headers.add('Access-Control-Allow-Origin', '*')

    return response

@app.route('/api/stream_event', methods=['GET', 'POST'])
def stream_event():
    product_id = request.form['product_id']
    name = request.form['name']
    event = request.form['event']
    timestamp = request.form['timestamp']

    response = jsonify({
        'event': util.stream_event(product_id,name,event,timestamp)
    })
    response.headers.add('Access-Control-Allow-Origin', '*')

    return response

@app.route('/home')
def hello_world():
    return "Hello World!"

if __name__ == "__main__":
    print("Starting Python Flask Server For Streaming events...")
    # util.load_saved_artifacts()
    app.run()