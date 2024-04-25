#!/bin/bash
# This script makes a request to 0.0.0.0:5000/catch_me and captures the response without displaying it.

curl -s -X PUT -d "user_id=98" "0.0.0.0:5000/catch_me" > /dev/null
