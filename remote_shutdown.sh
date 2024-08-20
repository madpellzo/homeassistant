#!/bin/bash

# ssh -i $1 $2@$3 'sudo poweroff'

# $1: user
# $2: password
# $3 IP address
curl -i --user ${1}:${2} -H "Content-Type: application/json" -H "Accept: application/json" -X POST -d '{"jsonrpc": "2.0", "method": "System.Shutdown", "id":1}' http://${3}:8080/jsonrpc