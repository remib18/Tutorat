# Utiliser une base de données avec PHP

En PHP, tu as pleins de façons de faire une même chose, tu l'as probablement déjà remarqué.
Eh bien, c'est pareil pour effectuer une connection à une base de donnée.

Nous ne verrons pas la première, car elle est peu utilisée et peu pratique.
Il s'agit d'utiliser pour chaque type de base de donnée différente tout un ensemble de fonction qui va différer.
Par exemple, si je dois me connecter à une base en Mysql, je n'utiliserais pas la même fonction que si je voulais me connecter sur une base MongoDB.

C'est pour ces raisons qu'est né l'objet PDO. Il s'agit d'une classe que l'on va utiliser pour effectuer la connection puis les requêtes.
On ne verra pas les autres fonctionnalités plus avancées offertes par PDO, mais je t'invite à te renseigner sur la documentation de PHP.

## Effectuer la connection

Pour lancer la connection à la base de donnée, c'est relativement simple.
La seule subtilité à comprendre c'est qu'en fonction de la base utiliser, il y aura une seule très légère différence.
```php
// On définit le serveur de base de donnée à utilisé, il est composé de l'url (ou du nom de domaine) et de la méthode (ici mysql)
// Certaines bases, comme mysql demandent aussi une base de donnée à utiliser.
// Cela signifie qu'il faudra plusieurs connections si on veut utiliser plusieurs bases.
$dsn = 'mysql:dbname=site;host=localhost';

// Un nom d'utilisateur peut être fournis.
// En mysql il est obligatoire
$nom_utilisateur = 'site';

// Enfin, de manière optionnelle, mais extrêmement recommandée, il est possible de fournir un lot de passe
$mot_de_passe = '•••••••••';

// Avec toutes ces données, on peut lancer la connection.
$db = new PDO($dsn, $nom_utilisateur, $mot_de_passe);
```

## Lancer une requête

Maintenant qu'on a notre base, nous pouvons l'utiliser en effectuant des requêtes.

```php
$query = $db->query('SELECT * FROM table;');
$response = $query->fetchAll(PDO::FETCH_ASSOC)

var_dump($response);
```

# A suivre

Cette fiche est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./composer.md).

Ressources pour approfondir :
