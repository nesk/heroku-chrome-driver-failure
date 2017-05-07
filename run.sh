# Start the driver
./chromedriver-linux-64 --verbose &

# Wait for the driver to start
sleep 2

# Start a new session
curl -X "POST" "http://localhost:9515/session" \
     -H "Content-Type: application/json; charset=utf-8" \
     -d $'{
  "desiredCapabilities": {
    "platform": "ANY",
    "browserName": "chrome",
    "chromeOptions": {
      "binary": "/app/.apt/opt/google/chrome/chrome"
    }
  }
}'
