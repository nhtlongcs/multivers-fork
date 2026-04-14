#!/bin/bash

set -euo pipefail

# Determine repository root and use absolute paths so the script works
# regardless of the current working directory
REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null) || {
    echo "Failed to determine repository root" >&2
    exit 1
}

# Check if the data directory already exists
if [ -e "$REPO_ROOT/datasets/scifact" ]
then
    echo "Data directory already exists. Skip download."
    exit 0
fi

# Download and unpack data from AI2 S3 bucket.
name="https://scifact.s3-us-west-2.amazonaws.com/release/latest/data.tar.gz"
mkdir -p $REPO_ROOT/datasets/scifact
wget -P $REPO_ROOT/datasets/scifact $name

tar -xvf $REPO_ROOT/datasets/scifact/data.tar.gz -C $REPO_ROOT/datasets/scifact
rm $REPO_ROOT/datasets/scifact/data.tar.gz