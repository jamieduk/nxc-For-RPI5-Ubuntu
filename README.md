# NetExec Virtual Environment Launcher
# (c) J~Net 2025

This project provides a clean way to install and run NetExec inside an isolated Python virtual environment on Ubuntu Noble ARM64 (Raspberry Pi 5 tested).

NetExec is the modern successor to CrackMapExec and is used for authorised network security testing.

---

## Files Included

### setup.sh
Installs dependencies, clones NetExec from GitHub, creates a virtual environment, and installs NetExec properly using pyproject build.

### start.sh
Activates the virtual environment and opens an interactive shell that keeps you inside the environment until you type `exit`.

---

## Requirements

- Ubuntu 24.04 Noble (ARM64 tested)
- Python 3
- Internet connection
- sudo privileges

---

## Installation

Make the installer executable:

```bash
chmod +x setup.sh
