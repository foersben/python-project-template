default:
    @just --list

setup:
    uv sync --all-groups
    uv run pre-commit install

install:
    @just setup

test:
    uv run pytest

lint:
    uv run ruff check --fix .
    uv run ruff format .
    uv run mypy app/

format:
    uv run ruff format .

clean:
    find . -type d -name "__pycache__" -exec rm -rf {} +
    find . -type d -name "*.egg-info" -exec rm -rf {} +
    rm -rf .pytest_cache .mypy_cache .coverage htmlcov .cache/uv

docs:
    uv run zensical build
