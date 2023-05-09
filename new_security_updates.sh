#!/bin/bash

# Get the number of security-related package updates
NUM_UPDATES=$(apt-get upgrade -s | grep -i security | wc -l)
# Get the server hostname
SERVER_NAME=$(hostname)

# Get the number of security-related package updates
NUM_UPDATES=$(apt-get upgrade -s | grep -i security | wc -l)

# Write the number of updates with server name as an instance label
echo "# TYPE num_security_updates gauge"
echo "num_security_updates{instance=\"${SERVER_NAME}\"} ${NUM_UPDATES}"
