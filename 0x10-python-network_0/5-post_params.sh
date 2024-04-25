#!/bin/bash
# This script sends a POST request to the URL passed as an argument with variables email and subject set to specified values, and displays the body of the response.

curl -s -X POST -d "email=test@gmail.com&subject=I will always be here for PLD" "$1"
