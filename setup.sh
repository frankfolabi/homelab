# Setup a virtual environment.
# On Ubuntu Linux install virtual environment
sudo apt install python3.12-venv

# Create a venv 
source ll_env/bin/activate

# To deactivate the virtual environment
# deactivate

# Installing Django
pip install --upgrade pip
pip install django

# Create a Django project
django-admin startproject ll_project .
# The following files and directory would be created in the current directory.
# ll_project/{__init__.py, asgi.py, settings.py, wsgi.py}
# manage.py

# Create the database
python manage.py migrate

# View the project
python manage.py runserver

# Start an app
python manage.py startapp learning_logs

# Define Models
# create a class Topic
#
# Activate Models
#
# Modify Database to store Models
python manage.py makemigrations learning_logs

# Modify Database 
python manage.py migrate

# Create Admin (superuser)
python manage.py createsuperuser

# Enter the username, email and password
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
