PIP := $(shell which pip)
PYTHON := $(shell which python)
NPM := $(shell which npm)

setup:
	-pyenv install 3.5.0
	-pyenv virtualenv 3.5.0 venv3.5.0-maff-analysis

install:
	$(PIP) install -r pip-packages.txt
	$(NPM) install

server:
	$(PYTHON) app.py
