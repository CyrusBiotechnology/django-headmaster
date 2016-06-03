#!/bin/bash
#
#  Run a simple functional test
#
#
# $1 = Django site name
# $2 = Port to use
# $3 = String to search for in headers

# Start the server
../$1/manage.py runserver 127.0.0.0:$2 &
SERVER_PID=$!

# Run the test
[[ -n "$(curl -I --silent localhost:$2 | grep $3)" ]] || exit 1

kill $SERVER_PID
