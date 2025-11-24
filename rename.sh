#!/bin/bash

# Usage: ./rename.sh prefix_ *.jpg

if [ $# -lt 2 ]; then
    echo "Usage: $0 prefix_or_suffix files"
    exit 1
fi

prefix=$1
shift

for file in "$@"; do
    mv "$file" "${prefix}${file}"
done

echo "Files renamed successfully!"
