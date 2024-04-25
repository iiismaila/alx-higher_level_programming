#!/bin/bash
# This script sends a GET request to the URL passed as an argument with the header variable X-School-User-Id set to 98, and displays the body of the response.

curl -s -H "X-School-User-Id: 98" "$1"
