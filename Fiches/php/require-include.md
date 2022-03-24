# Require et include : Réutiliser son code

Dans le développement, on a souvent besoin de réutiliser un bout de code. C'est pour cela que sont nés les fonctions 
et les objets. Une bonne pratique consiste à créer un fichier par objet et un fichier par fonctions ayant une 
utilité semblable.

Mais du coup, une fois le code dans des autres fichiers, comment y accéder ?

## Require

En php, ce mot clé te permet d'importer le chemin relatif qui suis dans des guillemets.
En revanche, il est conseillé d'utiliser sa variante require_once pour des raisons d'optimisations.
En effet, require va dire le fichier qui suit est nécessaire à l'exécution du programme.
Tous tes require doivent être en haut de ton fichier.

##### Exemple
```php
require __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../vendor/autoload.php';
```
`__DIR__` correspond au répertoire courant (celui du fichier).
`..` permet de remonter d'un niveau (le dossier parent du dossier de mon fichier).
`vendor/autoload.php` c'est le chemin de mon fichier à partir du dernier dossier remonté.

## Include

Include est légèrement de require. Il peut être placer n'importe où dans le fichier et sert de manière grossière à 
effectuer un copier-coller de code.

####### Exemple
```php
// Fichier abc.php
echo 'Salut toi !';
```

```php
echo 'Test';
include './abc.php';
echo 'Test 2';
include './abc.php';
```

L'exécution du dernier fichier provoquera :
 Test
 Salut toi !
 Test 2
 Salut toi !

###### Remarque
Tu auras probablement plus besoin du `include` que du require dans ton projet pour éviter de répéter ton code en 
remplaçant le contenu des `echo` par du code html.

# A suivre

Cette fiche est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./php-et-html.md).

Pour approfondir :
- Renseignes toi sur composer, il introduit une méthode plus simple pour l'import des fichiers. 
