# python-lambda-template
AWS Lambda template to use with Python

## Requirements
- Python ~3.9 (latest version supported by AWS Lambda)
- Poetry (local dependency to package management)
- Serverless Framework (local dependency to run locally)

## Run
### Install ###

1. Install [Poetry](https://python-poetry.org/docs/)
2. Install [Serverless Framework](https://www.serverless.com/framework/docs/getting-started)
3. Install serverless plugins
```
serverless plugin install -n serverless-offline
```
4. Create a virtual environment with Python 3.9 and activate it
```
python3.9 -m venv .env
source .env/bin/activate
```
5. Install the project dependencies with the local test packages
```
poetry install --with dev
```

### Running Locally ###

This project uses [Serverless Framework](https://www.serverless.com/framework/docs/getting-started) to run locally.
```
sls offline start --verbose
```

### Running Tests ###
```
source .env/bin/activate
pytest tests/
```