## CHANGELOG

### 0.8.0 - 23/11/2020

* Support de QGIS 3.16
* Amélioration des migrations des bases de données
* Ajout des champs convention et type_pluriannuel
* Modification des formulaires par glisser déposer

### 0.7.0 - 18/11/2020

* Modification de la table segment avec ajout des champs desserte_college, amenagement et amenagement_type
* Ajout des tables de valeurs pour amenagement et amenagment_type
* Définition des clés étrangères
* Modification de l'algo de chargements de couches
* Mise à jour des qml en conséquence
* Amélioration de l'algo de chargements des styles
* Ajout d'un trigger pour respecter la logique entre statut et amenagement_type
* Amélioration du processus des migrations de la base de données
* Début du portage vers QGIS 3.16

### 0.6.0 - 10/11/2020

* DELETE ON CASCADE pour les clés étrangères des éléments et étapes
* Fonctions et triggers de mise à jour et suppression à partir des vues v_portion et v_itineraire
* Actions de gestion des portions et itinéraires depuis les tables non géométriques
* Amélioration des QML de v_portion et v_itineraire
* Actions add or del selected_feature pour portion et itineraire
* Mise en forme des tableaux de portion et itinéraire

### 0.5.1 - 10/11/2020

* Amélioration de la construction du zip

### 0.5.0 - 10/11/2020

* Upgrade database: champs annee en text et code avancement
* Fix: Get the last DB version even if it is the same date
* Fix: triggerRepaint après chargement des styles

### 0.4.1 - 27/10/2020

* Fix bug

### 0.4.0 - 23/10/2020

* Ajout d'actions
  * Ajouter / retirer un élément à une portion
  * Ajouter / retirer une étape à un itinéraire
  * Créer une portion
  * Créer un itinéraire
* Mise à jour des fichiers styles
* Refonte du module d'export
  * Export via requête SQL
  * Refonte de l'algorithme d'export
* Mise à jour de la base de données
  * Suppression des fonctions d'export
  * Mise à jour de deux champs
* Ajout des fichiers SQL pour l'export

### 0.3.0 - 28/09/2020

* Ajout de l'algorithme d'import
  * Import d'un fichier dans une table de la base de données
  * L'utilisateur peut choisir la correspondance des champs
  * Les données peuvent être adaptées pour correspondre à COVADIS
* Ajout de l'algorithme d'export
  * Export d'une ou des tables dans le format Shapefile
  * L'utilisateur peut choisir de charger les couches correspondantes dans le projet
  * Export possible des 16 couches COVAVIS
* Ajout des champs dans la base de données

### 0.2.0 - 20/06/2020

* Adding features to manipulate data
  * Action on segment layer to split a segment
  * Adding new portions and itineraries is possible
* Adding Loading algorithms
  * Algorithm to load layers
  * Algorithm to load styles
* Adding some fields in database

### 0.1.0 - 03/06/2020

* Database structure following the COVADIS standardization
  * SQL files for the structure
  * Generated online doc
* Adding Processing algorithms to create the database
  * Algo to create the database structure
* Setting up the plugin
  * Including set up of continuous integration

###
