#!/bin/bash
# (c) J~Net 2025
# https://jnet.forumotion.com/t2173-raspberry-pi-nxc-netexec-ubuntu#3344
#
# ./setup.sh
#
set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
VENV_DIR="$BASE_DIR/venv"
APP_DIR="$BASE_DIR/netexec-src"

sudo apt update -y
sudo apt install -y git python3 python3-venv python3-pip libssl-dev libffi-dev build-essential rustc cargo

if [ ! -d "$APP_DIR" ]; then
    git clone https://github.com/Pennyw0rth/NetExec.git "$APP_DIR"
else
    cd "$APP_DIR"
    git pull
    cd "$BASE_DIR"
fi

python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

pip install --upgrade pip setuptools wheel

# Install directly from source (pyproject build)
pip install "$APP_DIR"

echo
echo "Installed. Testing version..."
"$VENV_DIR/bin/nxc" --version
