#!/bin/bash

# Usage: ./logwatch.sh /var/log/syslog ERROR

if [ $# -ne 2 ]; then
    echo "Usage: $0 log_file keyword"
    exit 1
fi

logfile=$1
keyword=$2

echo "Watching $logfile for '$keyword'..."

grep -i "$keyword" "$logfile"
