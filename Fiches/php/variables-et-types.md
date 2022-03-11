# Variables et type de données

## Déclarer ses variables

PHP est un langage plutôt apprécié pour ça flexibilité : un peu à la manière de python et à l'opposé du java, le php propose des variables qui peuvent changer de type dans le temps (cf. Exemple 1).

Bien que ce système paraisse cool, il est souvent à l'origine d'erreurs. Fais donc attention à ce raccourcis qui peut être trompeur : une variable doit rester propre à elle même (tu l'as créer pour une raison, représenté une donnée. Elle ne doit pas servir à en représenter une autre).

Venons en aux faits : voici comment déclarer une variable en php `$nomDeMaVariable = {valeur};` où tu remplaces bien entendu valeur par quelque chose. On oublie pas le `;` à la fin de chaque ligne de code.

###### Exemple 1

```php
// Variable numérique (entier)
$var = 542345;

// Puis chaine de caractère
$var = 'Bonjour';

// Ceci est une mauvaise pratique à éviter autant que possible.
```

## Les différents types en PHP

### Nombres

PHP possède deux types pour les nombres :

- Les entiers (ou int en anglais) représentent des nombres entier.
- Les flotants (ou float en anglais) représentent des nombre décimaux (à virgule).

Ces deux types sont interchangeables. C'est à dire que l'opération de deux flotants peux donner un entier. De même, il est possible d'additionner un entier et un flotant.

###### Exemple 2

```php
// Variable entière
$myInt = 5;

// Varible de flotant
$myFloat = 3.5;

// Addition de deux nombres
$mySum = $myInt + $myFloat; // Donne un flotant : 5 + 3,5 = 8,5.

// Multiplication de deux nombres
$myMultiplication = $myInt * $myFloat // Donne 17,5 : un flotant
$myMultiplication *= 2; // Donne 35 : un entier

// Toutes les autres opérations fonctionnent.
```

### Les booléens (Vrai ou Faux)

Les booléans (bool en php) sont des alias pour les entiers :

- `true` = `1`
- `false` = `0`

```php
// Vrai
$vrai = true;

// Faux
$faux = false;
```

### Les chaines de caractères

```php
// Chaine standard
$standard = 'Salut';

// Chaine avec variable
$strWithVar = "$standard toi !"; // = 'Salut toi !'

// Concaténation
$concat = $standard . ' toi !'; // = 'Salut toi !'
// Attention, on ne peut pas faire la somme de deux chaines de caractères avec un +
```

### Les tableaux

Les tableaux en php ne sont pas restraint à un type de valeur comme c'est le cas en java.

```php
$monTableau = [];
// $monTableau = []

$monTableau[] = 'Bonjour';
// $monTableau = ['Bonjour']

$monTableau[] = 1;
// $monTableau = ['Bonjour', 1]

$monTableau[1]; // -> 1

// Ou de manière plus directe
$monTableau = [
	'Bonjour',
	1
];
```

#### Cas particulier : Les tableaux associtifs

```php
$monTableau = [];
// $monTableau = []

$monTableau['a'] = 'Bonjour';
// $monTableau = ['Bonjour']

$monTableau['b'] = 1;
// $monTableau = ['Bonjour', 1]

$monTableau['a']; // -> 'Bonjour'

// Ou de manière plus directe
$monTableau = [
	'a' => 'Bonjour',
	'b' => 1
];
```

### Les types null, mixed et void

Le type `null` sert à dire que la variable ne contient rien, qu'elle n'a pas encore reçut sa valeur.

Le type `mixed` sert dans les fonctions et les méthodes des objets pour spécifier le type d'un paramètre ou d'un retour. C'est celui qui est appliqué par défaut dans php si rien n'est précisé. Ce type regroupe tous les types différents.

Le type `void` sert dans les fonctions et les méthodes des objets pour spécifier que rien ne sera retourner (même pas `null`).

# A suivre

Cette fiche est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./conditions-boucles-fonctions.md).

Ressources pour approfondir :
