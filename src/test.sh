#!/bin/bash

# Test script for app.js
# Run the JavaScript file and check output

output=$(node src/app.js 2>&1)
expected="Hello World
This is fun!
JavaScript is awesome!"

if [ "$output" == "$expected" ]; then
    echo "Test passed: Output matches expected."
    exit 0
else
    echo "Test failed: Output does not match expected."
    echo "Expected:"
    echo "$expected"
    echo "Got:"
    echo "$output"
    exit 1
fi