default:
    @just --list

setup:
    pixi install
    pixi run -e dev pre-commit install

install:
    @just setup

test:
    pixi run -e dev pytest

lint:
    pixi run -e dev ruff check --fix .
    pixi run -e dev ruff format .
    pixi run -e dev mypy app/

format:
    pixi run -e dev ruff format .

clean:
    find . -type d -name "__pycache__" -exec rm -rf {} +
    find . -type d -name "*.egg-info" -exec rm -rf {} +
    rm -rf .pytest_cache .mypy_cache .coverage htmlcov .pixi

docs:
    pixi run -e dev zensical build

run:
    pixi run fastapi run app/main.py

act-ci:
    act -W .github/workflows/ci.yml
