#! /bin/bash

# Check if NGINX is installed
if ! which nginx > /dev/null 2>&1; then
    echo "NGINX not installed."
    sudo apt install nginx -y
else
    echo "NGINX v$(nginx -v) is installed."
fi

# Check NGINX user



