# Modern Python Project Template

A high-performance, hardened Python repository template engineered explicitly for **Vertical Slice Architecture**, zero-bypass quality enforcement, and native **Multi-Agent AI Collaboration** (optimized for autonomous assistants like Roo Code or Antigravity).

This stack completely eliminates legacy toolchain friction (like slow dependency resolution or overlapping linters) by strictly prioritizing speed, deterministic environment isolation, and an uncompromising security model. It is designed for developers and AI architects who require a production-ready, typed, and instantly deployable foundation.

---

## 🏛️ System Philosophy & Architecture

### 1. Vertical Slice Architecture (VSA)

Unlike traditional horizontal layered architectures (Three-Tier, Onion, Hexagonal) that split code by technical concerns (controllers in one folder, services in another), this project organizes code into completely self-contained, vertical features.

* Each slice within `app/pipelines/` contains all components required to fulfill a specific business capability.
* **The AI Advantage:** Horizontal architectures force an AI agent to hop across multiple directories to implement a single feature, dramatically increasing token consumption, context window fragmentation, and the risk of context drift. Under VSA, an agent operates within a strictly bounded, discrete folder structure without leaking logic across distant parts of the application tree.

### 2. The Zero-Bypass Quality Gate

This repository operates on a strict "fail-fast" principle. Code cannot be committed, pushed, or deployed unless it passes a localized gauntlet of formatting, strict type-checking, cryptographic secret scanning, and documentation compliance validation.

### 3. Open Knowledge Format (OKF v0.1)

To ensure that all internal repository knowledge stays completely portable and optimal for secondary AI ingestion loops, this repository follows **Google Cloud's OKF v0.1 spec**. All Markdown documentation files inside `docs/` and `.agents/` are treated as structured nodes in an interlinked Knowledge Graph, strictly verified by a custom local Python gatekeeper script.

---

## 🛠️ Core Technology Stack & Tool Matrix

This ecosystem relies on modern, lightning-fast Rust-backed and asynchronous Python tooling to maintain a bulletproof environment.

| Tool | Component | Explicit Operational Task |
| --- | --- | --- |
| **Python 3.13+** | Runtime Environment | The core target engine. Fully locked into type checkers and compiler layers. |
| **uv** | Package Manager | Resolves dependencies in milliseconds and forces absolute workspace isolation via a deterministic lock engine (`uv.lock`). Completely replaces `pip`, `poetry`, and `virtualenv`. |
| **Hatchling** | Build Backend | Modern PEP 621 compliant build backend managing pure source target mappings. |
| **FastAPI** | Core Framework | Asynchronous, high-performance web framework providing foundational API routing and dependency injection layers. |
| **Pydantic v2** | Data Validation | Strict data parsing, schema enforcement, and environment variable settings management (`pydantic-settings`). |
| **Ruff** | Linter & Formatter | Written in Rust, replacing `flake8`, `black`, and `isort`. Enforces a 120-character line limit and strict adherence to Google Python Style Guide docstring rules. |
| **Mypy** | Type Enforcement | Configured in `strict = true` mode with `explicit_package_bases = true` to guarantee total type safety across isolated packages without duplicate tracking overlaps. |
| **Pytest** | Test Engine | Runs asynchronous unit, integration, and E2E validation passes (`pytest-asyncio`) with strict coverage metrics tracking (`pytest-cov`). |
| **Zensical** | Docs Engine | Compiles technical code documentation via `mkdocstrings[python]` and validates graph link structural integrity using `mkdocs-htmlproofer-plugin`. |
| **Just** | Task Automation | A local recipe runner (`Justfile`) that orchestrates all workspace commands, replacing complex bash scripts or overloaded `Makefile` syntax. |

---

## 📂 Architecture & Directory Layout

```text
├── .agents/                # Autonomous Agent Operational Rules & Workflows
│   ├── roles/              # Explicit Multi-Agent persona state constraints
│   ├── rules/              # Global framework and behavioral guidelines
│   └── workflows/          # Task-specific execution paths (e.g., implement.md)
├── .vscode/                # Isolated workspace configurations & extension requirements
├── app/                    # Application Source Tree
│   ├── api/                # Global API routing and middleware definitions
│   ├── core/               # Immutable core configs (Pydantic Settings) and exceptions
│   ├── domain/             # Pure domain logic and models (zero external dependencies)
│   └── pipelines/          # Isolated, self-contained feature slices
├── docs/                   # Markdown architecture guides, references, and system logs
├── scripts/                # Local automated continuous integration tools
│   └── validate_okf.py     # Script verifying documentation complies with Google OKF
├── tests/                  # Deterministic testing suite
│   ├── unit/               # Localized module verification logic
│   ├── integration/        # External adapter and pipeline interaction logic
│   └── conftest.py         # Session-scoped asynchronous loop management configuration
├── .clineignore            # Context protection limits for IDE coding assistants
├── .clinerules             # Absolute behavioral guardrails for AI agents
├── .pre-commit-config.yaml # Background git hook validation engine
├── Justfile                # Canonical task configuration registry
├── pyproject.toml          # Monolithic tool parameters (Ruff, Mypy, Pytest)
└── zensical.toml           # Technical documentation and site generation configuration

```

---

## 🔐 Enterprise Security Model

To prevent catastrophic credential leaks, this repository explicitly bans the storage of raw API keys or passwords in `.env` files.

**The Security Posture:**

1. **Local Vaulting:** All environment secrets must be stored externally using **KeePassXC** integrated with the OS **Secret Service API (D-Bus)** and an **SSH Agent**.
2. **Explicit Confirmation:** SSH keys must be loaded with explicit confirmation flags (`ssh-add -c`). This guarantees that if an autonomous IDE agent attempts to authenticate via Git or SSH in the background, a physical GUI prompt will block execution until a human clicks "Allow."
3. **Cryptographic Baseline:** The workspace uses `detect-secrets` via a `pre-commit` hook to scan every changed line for high-entropy strings.

* *Note:* The security baseline (`.secrets.baseline`) is **intentionally generated manually** during setup. Automating this generation would risk silently whitelisting real production secrets.

---

## 🤖 Multi-Agent Governance Network

This repository is designed to host a "Role-Playing State Machine" for single-thread AI IDE assistants (like Roo Code). Rather than relying on a complex external multi-agent framework, the agent shifts its own context constraints, skill sets, and write-permissions step-by-step using OKF-compliant Markdown profiles.

### The Persona Registry (`.agents/roles/`)

* **`01-orchestrator.md`:** The Lead. Analyzes user requests, generates technical OKF specs, and delegates state transitions. *Forbidden from writing functional code.*
* **`02-architect.md`:** The System Designer. Defines pure domain entities and core Pydantic configurations. *Forbidden from writing tests.*
* **`03-engineer.md`:** The Implementer. Scaffolds logic strictly inside `app/pipelines/` to turn red tests green. Enforces Google-style docstrings. *Forbidden from touching core configs.*
* **`04-qa-automator.md`:** The Gatekeeper. Scaffolds failing TDD tests based on specs and verifies edge cases. *Forbidden from modifying `app/` logic.*

### OKF Graph Compliance

Every Markdown file in the system acts as a node in the agentic knowledge graph. Every file **must** begin with standard YAML frontmatter explicitly declaring a `type`, and must exclusively use relative paths for linking.

```markdown
---
type: SOP
title: Complex Feature Multi-Agent Lifecycle
description: Sequential multi-role pipeline for complex system feature generations.
tags: [agentic, development, workflow]
---
# Lifecycle Implementation...

```

*If a human or agent attempts to commit an unstructured text file lacking this metadata, the `validate_okf.py` pre-commit hook will instantly reject the commit.*

---

## 🚀 Getting Started (Human & Machine Initialization)

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

The workspace reads `.vscode/extensions.json` and will automatically prompt you to install the optimized extension bundle (including `Ruff`, `Strict Mypy`, `Error Lens`, and `nefrob.vscode-just-syntax`). **Accept and install all recommendations to ensure live editor highlighting matches the CI quality gates.**

### 3. Bootstrap Environment

Run the single wrapper recipe to automatically configure your localized virtual environment, synchronize all dev/runtime dependency channels, and securely map git hooks:

```bash
just setup

```

### 4. Initialize Your Security Baseline

To activate the secret scanner tripwire, create your local cryptographic tracking baseline and register it with git:

```bash
uv run detect-secrets scan > .secrets.baseline
git add .secrets.baseline

```

### 5. Link Visual Studio Code Interpreter

1. Open the VS Code Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`).
2. Type **Python: Select Interpreter**.
3. Choose the path pointing directly to the locally generated `.venv/bin/python` folder.

---

## ⚙️ Development Task Matrix

Use `just` to coordinate all workspace tasks. **Never call bare `pip`, `poetry`, or global environment commands.**

| Command | Action Performed |
| --- | --- |
| `just default` | Lists every automated command recipe currently available. |
| `just setup` | Installs isolated virtual environments and assigns background Git hooks. |
| `just install` | Alias mapping directly to the `setup` macro. |
| `just lint` | Sequentially auto-fixes lint errors, enforces layout formatting, evaluates strict types via Mypy, and runs the OKF compliance Python script. |
| `just test` | Runs the asynchronous test suite via Pytest with code coverage matrix evaluation. |
| `just format` | Safely forces code blocks to match global stylistic spacing layout parameters. |
| `just docs` | Compiles your docstrings and Markdown graph into a live local documentation page reflecting structural source modifications. |
| `just clean` | Purges localized compiler cache states, artifact allocations (`__pycache__`, `.mypy_cache`), and lock remnants. |

---

## 🛡️ Pre-Commit Integrity Framework

A robust suite of checks runs automatically before any commit can seal.

1. **Syntax & Whitespace:** Fixes trailing spaces and ensures single-newline EOF structures.
2. **Security Tripwires:** Runs `detect-secrets` against the `.secrets.baseline` file.
3. **Lexical Validation:** Executes `codespell` to catch typos in code, strings, and documentation via `tomli` parsing.
4. **Code Quality:** Triggers `ruff-check`, `ruff-format`, and `mypy` locally targeting `app/` and `scripts/` with `pass_filenames: false` to ensure global context evaluation.
5. **Knowledge Graph Integrity:** Triggers `validate_okf.py` to ensure all AI context boundaries remain parsable.
6. **Author Identity:** A bash gate confirming `commit.gpgsign = true` is active locally, ensuring all commits are cryptographically verified to a human author.

---

## 🌌 CI/CD Pipeline Automation (GitHub Actions)

The repository’s continuous integration workflow is managed via `.github/workflows/ci.yml` and is split into two highly optimized, cache-enabled automated phases.

### Job 1: Code & Context Quality Gate

Runs automatically on every `push` and `pull_request` targeting the `main` branch.

* Spawns an isolated `ubuntu-latest` runner equipped with Python 3.13 and `uv` dependency mapping.
* Triggers all pre-commit hooks globally across all workspace assets.
* *Automation Rule:* Environment-specific identity hooks (`check-identity`, `enforce-author-identity`) are **explicitly bypassed (`SKIP`)** inside the cloud execution layer, as virtual machine runners lack local human GPG credentials.


* Executes the complete `pytest` matrix to ensure all functional components remain verified.

### Job 2: Build & Deploy Documentation

Triggers **only** after Job 1 passes perfectly, and only upon direct pushes to the `main` branch.

* Locks dependencies to the `dev` group channel via `uv`.
* Compiles your markdown guides and codebase docstrings via `zensical build`.
* Safely packages the resulting `./site` directory and deploys it natively to **GitHub Pages**, providing a centralized, universally accessible OKF-compliant documentation site for your system.
