#!/bin/bash

# Script to automate starting the Flask backend and React frontend

# Navigate to the backend directory and start Flask
echo "Starting Flask backend..."
cd "C:/Users/jinha/OneDrive/Desktop/TFT-Analyzer" || exit 1
export FLASK_APP=app.py
export FLASK_ENV=development  # Optional, for development purposes
nohup flask run --host=127.0.0.1 --port=5000 > flask.log 2>&1 &

FLASK_PID=$!
echo "Flask backend started with PID $FLASK_PID."

# Navigate to the frontend directory and start React
echo "Starting React frontend..."
cd "C:/Users/jinha/OneDrive/Desktop/TFT-Analyzer/tft-analyzer-frontend" || exit 1
nohup npm start > react.log 2>&1 &

REACT_PID=$!
echo "React frontend started with PID $REACT_PID."

echo "Both Flask backend and React frontend are running."
echo "Logs are available in flask.log (backend) and react.log (frontend)."
