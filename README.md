# Modern Python Project Template

A high-performance, hardened Python repository template engineered for **Vertical Slice Architecture** and native **AI Agent Collaboration** (such as Roo Code or Antigravity). This stack completely eliminates legacy toolchain friction by strictly prioritizing speed, absolute deterministic environment isolation, and automated "zero-bypass" quality gates.

---

## 🛠️ Core Technology Stack

* **Language Engine:** Python 3.13+
* **Dependency & Environment Management:** [uv](https://github.com/astral-sh/uv) (Blazing-fast, standard-compliant virtual environment isolation)
* **Build Backend:** [Hatchling](https://hatch.pypa.io/latest/) (Modern PEP 621 compliance)
* **Linting & Formatting:** [Ruff](https://astral.sh/ruff) (Enforcing strict PEP 8 and Google Python Style Guide conventions)
* **Type Enforcement:** [Mypy](https://mypy-lang.org/) (Configured in Strict Mode)
* **Task Automation:** [Just](https://github.com/casey/just) (Self-documenting workspace command runner)
* **Documentation Engine:** [Zensical](https://github.com) + `mkdocstrings[python]` ( differential static site generation with automated API extraction directly from source docstrings)
* **Context Schema Engine:** Google's Open Knowledge Format (OKF v0.1)

---

## 📂 Architecture & Directory Layout

The codebase implements a **Vertical Slice Architecture**. Features are grouped by technical and business capability rather than horizontal application tiers, allowing humans and AI agents to add, refactor, or delete distinct capabilities without breaking distant parts of the system.

```text
├── .agents/                # Standalone Agent Workflows & SOPs
│   └── workflows/          # Task-specific execution paths (e.g., implement.md)
├── .vscode/                # Isolated workspace configurations & extension recommendations
├── app/                    # Application source tree
│   ├── api/                # FastAPI router definitions and routing layer
│   ├── core/               # App configuration (Pydantic Settings), constants, and exceptions
│   ├── domain/             # Pure domain logic and models (zero external dependencies)
│   └── pipelines/          # Self-contained feature slices
├── docs/                   # Markdown architecture guides and system logs
├── scripts/                # Local automated continuous integration tools
│   └── validate_okf.py     # Script verifying documentation complies with Google OKF
├── tests/                  # Deterministic testing suite
│   ├── unit/               # Localized module verification logic
│   ├── integration/        # External adapter and pipeline interaction logic
│   └── conftest.py         # Session-scoped asynchronous loop management configuration
├── .clineignore            # Token window optimization boundaries for AI IDE assistants
├── .clinerules             # Non-negotiable structural and tooling guardrails for agents
├── .pre-commit-config.yaml # Background git hook validation engine
├── Justfile                # Canonical task configuration registry
├── pyproject.toml          # Monolithic tool parameters (Ruff, Mypy, Pytest, Hatch)
├── uv.toml                 # Isolated caching definitions for local dependency workflows
└── zensical.toml           # Technical documentation configuration

```

---

## 🚀 Workspace Initialization

### 1. Prerequisites

Ensure the following tools are globally accessible on your host machine:

* `uv`
* `just`
* `git`

### 2. IDE Setup (VS Code / Cursor)

Open the repository folder directly inside your editor:

```bash
code .
```

The workspace reads `.vscode/extensions.json` and will automatically prompt you to install the optimized extension bundle (including `Ruff`, `Strict Mypy`, `Error Lens`, and `nefrob.vscode-just-syntax`). **Accept and install all recommendations to ensure live editor highlighting matches our quality gates.**

### 3. Bootstrap Environment

Run the single wrapper recipe to automatically configure your localized virtual environment, synchronize all dev/runtime dependency channels, and securely map git hooks:

```bash
just setup
```

### 4. Link VS Code Interpreter

1. Open the VS Code Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`).
2. Type **Python: Select Interpreter**.
3. Choose the path pointing directly to the locally generated `.venv` folder.

---

## ⚙️ Development Task Matrix

Use `just` to coordinate all workspace tasks. Never call bare `pip`, `poetry`, or global environment commands.

| Command | Action Performed |
| --- | --- |
| `just` | Lists every automated command recipe currently available |
| `just setup` | Installs isolated virtual environments and assigns background hooks |
| `just lint` | Automatically formats files and runs Ruff and Mypy strict validation loops |
| `just test` | Runs the test suite via Pytest with code coverage matrix evaluation |
| `just format` | Safely forces code blocks to match global stylistic spacing layout parameters |
| `just docs` | Builds a live local documentation page reflecting structural source modifications |
| `just clean` | Purges localized compiler cache states, artifact allocations, and lock remnants |

---

## 🧠 Agentic Integration & OKF Compliance

### Local Agent Rules (`.clinerules`)

When activating an interactive workspace agent (such as **Roo Code**), the system locks behavior to the root `.clinerules` layout:

* **Tooling Limits:** Agents are strictly banned from initializing dependencies outside of `uv run` or raw `just` triggers.
* **Docstring Requirements:** All functional definitions require structured Google-style docstrings. This allows `mkdocstrings` inside Zensical to automatically compile code maps without human intervention.
* **The Zero-Bypass Gate:** The agent cannot complete a task until `just lint` and `just test` resolve with clear execution signals.

### Open Knowledge Format (OKF) Validation

To ensure that all internal repository knowledge stays completely portable and optimal for secondary AI ingestion loops, this repo follows **Google Cloud's OKF v0.1 spec**. All Markdown documentation files inside `docs/` and `.agents/` are treated as structured nodes in a Knowledge Graph and are verified automatically by `scripts/validate_okf.py`.

Every Markdown asset **must** begin with standard YAML frontmatter explicitly declaring a `type`:

```markdown
---
type: SOP
title: Codebase Feature Implementation Pipeline
description: Multi-phase cognitive loop guiding system enhancements.
tags: [agentic, development, workflow]
---

# Codebase Feature Implementation Pipeline
...
```

*If a human or agent attempts to commit an unstructured text file lacking a declared metadata `type`, the local pre-commit hooks and `just lint` pipelines will intentionally fail to protect repository context parity.*
