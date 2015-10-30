PIP := $(shell which pip)
PYTHON := $(shell which python)
NPM := $(shell which npm)
BOWER := $(shell pwd)/node_modules/.bin/bower

setup:
	-pyenv install 3.5.0
	-pyenv virtualenv 3.5.0 venv3.5.0-flask-sample-app

install:
	$(PIP) install -r pip-packages.txt
	$(NPM) install
	$(BOWER) install

server:
	$(PYTHON) app.py
