PIP := $(shell which pip)

setup:
	-pyenv install 3.5.0
	-pyenv virtualenv 3.5.0 venv3.5.0-maff-analysis

install:
	$(PIP) install -r pip-packages.txt
