# Contribution

Le projet est hébergé sur GitHub

[Visiter GitHub](https://github.com/3liz/qgis-veloroutes_voies_vertes-plugin/){: .md-button .md-button--primary }

## Code

Le code SQL et Python sont couverts par des tests unitaires utilisant Docker.

[![Tests 🎳](https://github.com/3liz/qgis-pgmetadata-plugin/workflows/Tests%20%F0%9F%8E%B3/badge.svg)](https://github.com/3liz/qgis-pgmetadata-plugin/actions?query=workflow%3A%22Tests+%F0%9F%8E%B3%22+branch%3Amaster)
[![Flake8 🎳](https://github.com/3liz/qgis-pgmetadata-plugin/workflows/Flake8%20%F0%9F%8E%B3/badge.svg)](https://github.com/3liz/qgis-pgmetadata-plugin/actions?query=workflow%3A%22Flake8+%F0%9F%8E%B3%22+branch%3Amaster)
[![Migration 🗂](https://github.com/3liz/qgis-pgmetadata-plugin/workflows/Migration%20%F0%9F%97%82/badge.svg)](https://github.com/3liz/qgis-pgmetadata-plugin/actions?query=workflow%3A%22Migration+%F0%9F%97%82%22+branch%3Amaster)

```bash
pip install -r requirements-dev.txt
flake8
make tests
make test_migration
```

Sur une nouvelle base de données, si vous souhaitez installer la base de données avec les migrations :

```python
import os
os.environ['TEST_DATABASE_INSTALL_VELOROUTES'] = '0.0.3'  # Enable
del os.environ['TEST_DATABASE_INSTALL_VELOROUTES']  # Disable
```

## Documentation

La documentation utilise [MkDocs](https://www.mkdocs.org/) avec [Material](https://squidfunk.github.io/mkdocs-material/) :

```bash
pip install -r requirements-doc.txt
mkdocs serve
```
