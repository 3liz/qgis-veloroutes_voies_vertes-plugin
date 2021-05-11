# Contribution

Le projet est hébergé sur GitHub

[Visiter GitHub](https://github.com/3liz/qgis-veloroutes_voies_vertes-plugin/){: .md-button .md-button--primary }

## Code

Le code SQL et Python sont couverts par des tests unitaires utilisant Docker.

[![🎳 Tests](https://github.com/3liz/qgis-veloroutes_voies_vertes-plugin/actions/workflows/ci.yml/badge.svg)](https://github.com/3liz/qgis-veloroutes_voies_vertes-plugin/actions/workflows/ci.yml)

```bash
pip install -r requirements/dev.txt
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
pip install -r requirements/doc.txt
mkdocs serve
```
