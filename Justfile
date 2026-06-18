install:
    uv sync

test:
    uv run pytest

lint:
    uv run ruff check
    uv run mypy

format:
    uv run ruff format

docs:
    uv run zensical build
