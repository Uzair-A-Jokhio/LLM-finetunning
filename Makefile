install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt
		pip install 'accelerate>=0.26.0'
		pip install transformers[torch]
test:
		python -m pytest -vv 
format:
		black *.py 
lint:
		pylint --disable=R,C *.py 
venv:
		python -m venv .venv

all: install lint test format