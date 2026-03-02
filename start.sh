#!/bin/bash
# (c) J~Net 2025
# https://jnet.forumotion.com/t2173-raspberry-pi-nxc-netexec-ubuntu#3344
#
# ./start.sh
#
set -e
echo "Starting VENV Shell"
echo "type nxc --help"
echo ""
echo "Press Enter To Continue..."
read readyornot

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
VENV_DIR="$BASE_DIR/venv"

if [ ! -d "$VENV_DIR" ]; then
    echo "Virtual environment not found."
    exit 1
fi

source "$VENV_DIR/bin/activate"

clear
echo "NetExec Virtual Environment Active"
echo "Type 'exit' to leave."
echo

exec bash --noprofile --norc
echo ""
