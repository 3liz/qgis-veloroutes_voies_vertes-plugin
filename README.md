# qgis-veloroutes_voies_vertes-plugin

Standard Covadis Véloroutes et Voies Vertes (3V)

QGIS >= 3.10

Documentation de la base de données : 
* https://3liz.github.io/qgis-veloroutes_voies_vertes-plugin/

Dépôt QGIS :
* URL : `https://github.com/3liz/qgis-veloroutes_voies_vertes-plugin/releases/latest/download/plugins.xml`
* [Comment ajouter un dépôt dans QGIS](https://3liz.github.io/add_qgis_repository.html)

## Tester les migrations

Faire une variable d'environement, soit dans QGIS ou en Python : 
```python
import os
os.environ['TEST_DATABASE_INSTALL_Veloroutes'] = '0.3.0'
```
L'installation de la base se fera avec 0.3.0. On peut ensuite appliquer les migrations.
