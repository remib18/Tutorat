# PHP et HTML : Générer un site dynamique

PHP te permet de concevoir un site dynamique, c'est-à-dire en fonction de l'utilisateur ou de la ressource qu'il 
souhaite accéder, la page afficher sera différente.

## Retourner du HTML dans du PHP
Comme tu le sais déjà, le navigateur ne comprend pas le PHP.
Il faut donc faire en sorte que le php renvoie du HTML.

### Avec `echo`
La méthode la plus simple sera probablement à l'aide du mot clé `echo` qui affiche ce qu'il suit.
Par exemple
```php
echo '<p>Salut</p>';
echo '<p>', 'Salut', '</p>';
```
Retournera l'élément HTML paragraphe avec Salut dedans.
Attention, ne pas oublier la structure de base du HTML (`<html><head>...</head><body>...</body></html>`)

### Avec print

```php
print_r('<h1>ma page</h1>');
print_r("
<div>
    <p>Salut toi</p>
</div>
");
```

## Obtenir les données passées à l'url

En php, on peut facilement obtenir les données qui sont passés à l'URL (méthode GET).
On utilise pour cela la variable globale (= accessible partout) `$_GET`.

###### Exemple
Par exemple, on voudrait avoir une page qui prend en paramètre l'identifiant d'un utilisateur et qui retourne la 
page de son profil (les données comme son nom d'utilisateur... viennent de la base de donnée).

On va alors concevoir un unique fichier pour gérer tous les profils utilisateurs à la racine de notre projet.
Il va ensuite récupérer le paramètre identifiant puis retourner du HTML. Attention, cet exemple n'est pas sécurisé, 
n'importe qui peut accéder à la page avec des paramètres personnalisés.

```php
// profile.php
<?php

switch ($_GET['identifiant]) {
    case 'Tom':
        echo '<p>Bonjour Tom</p>;
    case 'Tomy':
        echo '<p>Bonjour Tomy</p>;
    case 'Tomas':
        echo '<p>Bonjour Tomas</p>;
    default:
        echo "<p style=\"color:red;\">Tu n'est pas enregistré, nom fournis: $_GET['identifiant]</p>";
}
```

## Mélanger les deux

Il existe une dernière possibilité bien que peu souhaitable, c'est de mélanger le php et le HTML dans le fichier HTML.

# A suivre

Cette fiche est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./traitement-formulaires.md).

Ressources pour approfondir :
