#!/bin/bash

# Usage: sudo ./useradd.sh username

if [ "$EUID" -ne 0 ]; then 
    echo "Run as root"
    exit
fi

if [ -z "$1" ]; then
    echo "Usage: $0 username"
    exit 1
fi

useradd -m -s /bin/bash "$1"
passwd "$1"

echo "User $1 created successfully!"
