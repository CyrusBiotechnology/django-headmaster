#!/bin/bash
#
#   Run a simple functional test. Run this from the package root, after you've
#  configured a Django site at $1.
#
#
# $1 = Django site name
# $2 = Port to use
# $3 = String to search for in headers

trap EXIT

# Start the server
./$1/manage.py runserver 127.0.0.1:$2 &
SERVER_PID=$!
trap "kill $SERVER_PID" EXIT

sleep 5

# Run the test
[[ -n "$(curl -I --silent localhost:$2 | grep $3)" ]] || exit 1
