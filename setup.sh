#!/bin/bash

# This script is to automate the setup of the virtual environment needed to run
# the Learning Log app on Ubuntu. 

# Check if python3-venv is installed
echo -e "[*] Checking if python3-venv is installed..."
if dpkg -l | grep -q '^ii\s\+python3-venv\s'; then
    echo "python3-venv is already installed."
else
    echo "python3-venv is not installed. Installing..."
    sudo apt update && sudo apt install -y python3-venv || exit 1
fi

# Create the virtual environment called ll_env
echo -e "[*] Creating virtual environment..."
python3 -m venv ll_env

echo -e "[*] Created the virtual environment..."

(
  echo "This is inside a subshell"
  
  # Activate the virtual environment (only inside this subshell)
  source ll_env/bin/activate

  # Upgrade pip and install dependencies
echo -e "[*] Installing Python packages..."
pip install --upgrade pip
pip install django django-bootstrap5


# Installing Django
if [ -f "manage.py" ]; then
    echo -e "[✓] Starting Django development server..."
    python manage.py runserver
else
    echo -e "[✗] manage.py not found in current directory. Skipping runserver."
fi


# To deactivate the virtual environment
echo -e "[i] To deactivate the virtual environment, run: deactivate"
# deactivate

)