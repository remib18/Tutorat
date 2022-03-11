# Conditions, boucles et fonctions

Maintenant que tu es au point avec les variables, il est temps de créer des structures plus complexes pour les utilisés.

## Les conditions

Elles respectent le même principe qu'en Java et disposent des mêmes opérateur logiques :

```php
if (1 === '1') {
	throw new \Error('Ceci n\' est pas possible !');
}

if (1 === true) {
	echo 'Ceci est toujours vrai';
}
```

## Les boucles

Il existe plusieurs manière de parcourir des données complexes en PHP.

```php
// Pour parcourir tous les éléments d'un tableau :
foreach($tableau as $item) { // Lire: pour chaque $item dans $tableau
	echo $item;
}

for($i = 0; $i <= sizeof($tableau); $i++) {
	echo $tableau[$i];
}

$i = 0;
while ($i <= sizeof($tableau)) {
	echo $tableau[$i];
	$i++;
}
```

## Les fonctions

Le typage des fonctions est optionnel en php (il n'apparait en fait que depuis la version 7) mais vu que c'est une bonne pratique, on va l'utiliser.

J'en profite pour montrer que la PHPDoc est très semblable à la JavaDoc. Je vous conseille fortement de l'utiliser.

```php
/**
 * Une fonction qui ecrit "Salut toi"
 *
 * @return void
 */
function salut(): void {
	echo 'Salut toi';
}

/**
 * Une fonction qui accueille les utilisateur authentifiés
 *
 * @param string $prenom Le prénom de l'utilisateur
 * @return void
 */
function salutToi(string $prenom): void {
	echo "Salut, $prenom !";
}
```

# A suivre

Cette fiche est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./require-include.md).

Ressources pour approfondir :
