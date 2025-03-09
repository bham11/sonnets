# Makefile for Flask app

# Environment name
ENV_NAME = .venv

# Python version
PYTHON_VERSION = 3.12

env:
	set FLASK_APP=src/app.py
# Create virtual environment
create-env:
	python$(PYTHON_VERSION) -m venv $(ENV_NAME)
	@echo "Virtual environment $(ENV_NAME) created with Python $(PYTHON_VERSION)"

# Install dependencies in the virtual environment
install:
	$(ENV_NAME)/bin/pip install --upgrade pip
	$(ENV_NAME)/bin/pip install -e .
	@echo "Dependencies installed in the virtual environment $(ENV_NAME)"

# Install development dependencies
install-dev:
	$(ENV_NAME)/bin/pip install --upgrade pip
	$(ENV_NAME)/bin/pip install -e .[dev]
	@echo "Development dependencies installed"

# Run Flask app
run:
	FLASK_APP=src/app.py $(ENV_NAME)/bin/flask run
	@echo "Flask app is running"

# Run tests with pytest
test:
	$(ENV_NAME)/bin/pytest
	@echo "Tests run successfully"
