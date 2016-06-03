#!/bin/bash

[[ -n "$(curl -I --silent localhost:$1 | grep $2)" ]] || exit 1
