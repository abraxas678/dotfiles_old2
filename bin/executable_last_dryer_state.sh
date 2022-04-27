./adafruit.sh | tac | tac | jq | grep dry --after-context=8 | head -n 9 | grep last_value | sed 's/.*: \"//' | sed 's/\".*//'
