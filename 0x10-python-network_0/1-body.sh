#!/bin/bash
# This script takes a URL as input, sends a GET request to that URL using curl in silent mode, and displays the body of the response (for 200 status code responses).

curl -s "$1" -o response.txt -w "%{http_code}" | {
    read status
    if [[ $status -eq 200 ]]; then
        cat response.txt
    else
        echo "Non-200 status code received: $status"
    fi
    rm -f response.txt
}
