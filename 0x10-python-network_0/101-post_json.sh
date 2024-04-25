#!/bin/bash
# This script sends a JSON POST request to a URL passed as the first argument, using the contents of a file passed as the second argument as the body of the request, and displays the body of the response.

if [ $# -lt 2 ]; then
    echo "Usage: $0 <URL> <filename>"
    exit 1
fi

url=$1
filename=$2

response=$(curl -s -X POST -H "Content-Type: application/json" -d "@$filename" "$url")
echo "$response"
