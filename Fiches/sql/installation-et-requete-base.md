# Quelques rappels en SQL

## Installation

### MacOS

1. Ouvrir le terminal (**⌘ + espace** puis écrit `terminal` et appuis sur **entrer**).
2. Installer [homebrew](https://brew.sh/index_fr) en exécutant dans le terminal `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
    Il peut être nécessaire pour cette étape de rajouter `sudo` devant la commande puis de renseigner ton mot de passe utilisateur.
3. Installer mysql en exécutant `brew install mysql`
4. Connection à la base avec l'utilisateur root en ligne de commande (sur le terminal) : `mysql -u root`

### Windows

Suis le guide d'installation de [Wamp](https://www.wampserver.com). Tu obtiendras un serveur web avec un module php intégrer, un serveur mysql et d'autres trucs cools 😉.

Une fois le serveur web et mysql démarrer, rends-toi sur [PhpMyAdmin](http://localhost/phpmyadmin) (ce lien ouvre directement phpMyAdmin qui tourne sur ta machine).

## Rappels SQL

- Obtenir la liste des db : `SHOW DATABASES;`
- Obtenir la liste des tables : `SHOW TABLES;`
- Obtenir la structure d'une table : `SHOW COLUMNS FROM table;`
- Obtenir le contenu d'une table : `SELECT * FROM table;`