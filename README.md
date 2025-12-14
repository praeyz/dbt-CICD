
## dbt-CICD

A lightweight **CI/CD pipeline setup for dbt projects**. This repository demonstrates how to configure, test, and deploy dbt models using GitHub Actions, Poetry, and environment‑aware workflows.

## Features
- Automated CI/CD with GitHub Actions
- Environment management via `profiles.yml` and secrets
- Poetry integration for dependency management
- Custom macros and models for dbt experimentation
- Debugging utilities (`dbt debug`) for validating connections

## Project Structure
- `.github/workflows/` → CI/CD pipeline definitions  
- `.vscode/` → Development environment settings  
- `macros/` → Custom dbt macros  
- `models/` → dbt models  
- `profiles.yml` → dbt environment profiles  
- `pyproject.toml` & `poetry.lock` → Python dependencies  
- `cosmos_config.py` → Cosmos configuration (placeholder)  

## Setup

`git clone https://github.com/praeyz/dbt-CICD.git`

`cd dbt-CICD`

`pip install poetry`

`poetry install`

Configure credentials:
- Add your Google Cloud keyfile as a GitHub secret (`KEYFILE`).
- The workflow writes this secret into `keyfile.json` during pipeline runs.

## Usage

### TO DEBUG
```bash
dbt debug -t swm_dev
```
or any other targets

### TO RUN
```bash
dbt run -t swm_dev --select tag:swm
```
Interchange `swm` with `acme` to run for the ACME target.

## CI/CD Workflow
- **Job 1: Configurations-and-Env-Variables**  
  Sets up Google credentials and exports environment variables  
- **Job 2: Debug-connections**  
  Installs Poetry and validates dbt connections  


## Tech Stack
- Python (100%)  
- dbt for data transformations  
- GitHub Actions for CI/CD  
- Poetry for dependency management  


