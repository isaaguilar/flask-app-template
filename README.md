# flask-app-template

A flask app template with a production ready Dockerfile. 

## Flask Development Environment Setup

Create a virtual environment  

```bash
# use python3
virtualenv -p python3 venv

# Install requirements
venv/bin/pip install -r requirements.txt

# Start the app for testing locally
venv/bin/python run.py
```

Access the app on port 15000: 

- [http://localhost:15000/](http://localhost:15000/)


## Running the Production Container

Build the docker image and run it with this one-liner:

```
docker run -it --rm -p 80:15000 $(docker build . -q)
```

Access the app on port 80:

- [http://localhost/](http://localhost/)
