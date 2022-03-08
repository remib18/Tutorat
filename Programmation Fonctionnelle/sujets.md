# Programation fonctionnelle

## Exercices

Pour l'ensemble des exercices suivants, ton objectif sera de réduire au maximum la complexité de votre algorithme.

Tu pourras observer qu'il y a souvent une solution mathématique qui permet de retrouver le même résultat mais avec une complexité linéaire.

### Partie 1 — Fonctions sur des entiers

#### 1: Somme des n premiers entiers

Ecrire une fonction qui prend en paramètre un entier n positif ou nul et qui calcule la somme des n premiers entiers.

#### 2: Somme des n premiers entiers impaires

Ecrire une fonction qui prend en paramètre un entier n positif ou nul et qui calcule la somme des n premiers entiers impairs. Par exemple, la somme des quatres premiers entiers impairs est égale à `1 + 3 + 5 + 7`.

#### 3: Somme des entiers entre p et q

Ecrire une fonction qui prend en paramètre deux entiers p et q tels que p ≤ q et qui calcule la somme des entiers entre p et q.

#### 4: Dernier chiffre de 2^n (2 puissance n)

Ecrire une fonction qui prend en paramètre un entier positif ou nul n et qui calcule la valeur du dernier chiffre ba base 10 de l'entier 2^n.

#### 5: Division euclidienne

Ecrire une fonction qui prend en paramètre deux entiers positifs a et b, b ≠ 0 et qui calcule le quotient de la division entière de a par b.

#### 6: Factorielle

Ecrire une fonction qui prend en paramètre un entier strictement positif n et qui calcule factorielle `n = n × (n - 1) × ... × 1`, noté n!, qui peut être définie par `1! = 1` et `n! = n × (n - 1)!`.

#### 7: Puissance d'un entier

Ecrire une fonction qui prend en paramètre deux entiers positifs ou nuls a et b et qui calcule a^b.

### Partie 2 — Fonctions sur les listes (pas encore fait de correction)

#### 1: Longueur d'une liste

Ecrire une fonction qui prend en paramètre une liste et qui renvoie le nombre d'élements de la liste.

#### 2: Somme des entiers d'une liste

Ecrire une fonction qui prend en paramètre une liste et qui renvoie la somme des entiers de la liste.

#### 3: La fonction map

Reproduire la fonction map de OCaml. Pour rappel, cette fonction de type `('a -> 'b) -> 'a list -> 'b list`, prend en paramètre une fonction et une liste et construit la liste contenant l'application de cette fonction sur chaque élément de la liste donnée : `map f [x1 ; ... ; xn]` = `[f x1 ; ... ; f xn]`. _Cette fonction est définie dans la bibliothèque OCaml List_.

#### 4: La fonction find

Reproduire la fonction find de OCaml. Pour rappel, cette fonction de type `('a -> bool) -> 'a list -> 'a`, prend en paramètre un prédicat p, une liste d'éléments et renvoie le premier élément satisfesant le predicat p. Cette fonction est définit dans la bibliothèque OCaml List. Par exemple, `find (fun x -> x > 0) [-2 ; 4 ; -3 ; 6 ; 7]` donne le premier entier positif de la liste `[-2 ; 4 ; -3 ; 6 ; 7]` : 4.

#### 5: Maximum d'une liste non vide d'entiers

Ecrire une fonction qui prend en paramètre une liste non vide d'entiers et qui renvoie le maximum des entiers de la liste.

#### 6: Nombre d'occurences d'un élément dans une liste

Ecrire une fonction qui prend en paramètre un élément e et une liste et qui renvoie le nombr d'occurences de e dans la liste donnée.

#### 7: Y'a t'il plus que 0 qui de 1 dans une liste ?

Ecrire une fonction qui prend en paramètre une liste d'entiers et qui détermine s'il y a plus de 0 que de 1 dans la liste donnée.

#### 8: Concaténer deux liste

Ecrire une fonction qui prend en paramètre deux listes et qui construit la concaténation de la première liste et de la seconde.

#### 9: Renverser une liste

Ecrire une fonction qui prend en paramètre une liste et qui construit la liste inversée. Ainsi la liste inversée de `[1 ; 2 ; 3 ; 4]` est la liste `[4 ; 3 ; 2 ; 1]`.

#### 10: Une liste d'entiers est-elle croissante ?

Ecrire une fonction qui prend en paramètre une liste d'entiers non nulle et qui détermine si la liste est croissante ou non.

### Partie 3 — Tri de liste (pas encore fait de correction)
@Todo

#### 1: Tri par insertion d'une liste

#### 2: Tri par sélection d'une liste

#### 3: Tri rapide d'une liste (Quicksort)

#### 4: Tri fusion d'une liste
