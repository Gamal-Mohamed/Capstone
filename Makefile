#These are the instructions to setup and lint environment

# Create python virtualenv & source it
setup:
	python3 -m venv venv
	. venv/bin/activate

# Upgrading pip & installing dependencies
install:
	pip3 install --upgrade pip && pip3 install Flask && pip3 install pylint
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x ./hadolint


# In this step, linting the dockerfile
lint:
	./hadolint Dockerfile

all: install lint