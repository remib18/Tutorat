# Web et Base de données

## Exercices

### Partie 1 — HTML & CSS
Pour l'ensemble de ces exercices, rends-toi sur [le Figma liée](https://www.figma.com/file/2uT1qaisbCdEioOiLH6Wtd/Exos-HTML-%26-CSS?node-id=4%3A16) pour obtenir les pages à reproduire.
Tu retrouveras également les consignes sur le Figma 😉
```css
/* Police utilisée dans ces exercices (ajoutes ça dans ton css) : */
@import url('https://fonts.googleapis.com/css2?family=Barlow+Semi+Condensed:wght@400;500&display=swap');
body {
	font-family: 'Barlow Semi Condensed', sans-serif;
}
```

#### 1: Grilles basiques
1. Créer le HTML correspondant à la page en la pensant pour utiliser un conteneur grille (grid).
2. Ajoutes le CSS en respectant les contraintes suivantes
	- Tu ne peux créer que 7 classes pour gérer la disposition `.author`, `.author-details`, `.card`, `.card-container`, `.card-quotes`, `.large`, `.tall`
	- Tu as le droit à 3 classes supplémentaires pour les couleurs
	- Tu dois réutiliser ton code
3. (Bonus) On aimerait que n'importe quelle carte puisse avoir l'image vectorielle de guillemets par-dessus, mais sans avoir à la rajouter dans le HTML.
	- Essaie de résoudre ce problème. *Indice : Utilise une image en fond*
	- Supprime l’image vectorielle du HTML
4. (Pour aller plus loins: PHP) On remarque que certains aspects de notre page sont présent à plusieurs endroits avec pour seule différence le contenu. On aimerait n’avoir à coder leur HTML qu’une seule fois, ce serait plus pratique.
	- À l’aide de PHP, créer 2 composants :
		- author
		- card
	- Puis un autre fichier PHP qui demande leur contenu avec des données.

#### 2: Cartes simple Grid & Flexbox + animations
1. Réalises le HTML et le CSS de la carte en respectant la structure du Figma et en utilisant un conteneur grille.
2. Réutilises le HTML et le CSS de base de la question 1 puis modifie le conteneur pour utiliser un conteneur flexible (flex).
3. (Bonus) Ajouter une animation CSS au survol
	- Grossissement de la carte de 5%
	- Rotation de la carte de 2°

#### 3: Grid ou Flexbox ?
1. Réaliser le HTML et le CSS de la carte en respectant la structure.
	- Effectuer les différents effets de survols en CSS. *Indice : Pour les éléments au survol de l’image, utilises l’opacité et une position relative/absolue.*
	- La carte et le contenu de celle-ci (tout sauf image) doit être disposé à l’aide de la technologie flexbox.
2. Créer plusieurs cartes à partir d'une seule
	- En utilisant le HTML et le CSS de la question 1, ajouter une classe `.horizontal` permettant de disposer la carte de manière horizontale.
	- Ajouter une seconde classe `.rtl` qui inverse la position de l’image et du contenu
	- Tu ne dois pas modifier le HTML (hors de l'ajout des classes) ni le CSS 😉 *Indice : modifier le comportement des conteneurs flexibles.*
3. (Bonus) Avec des Grilles ?
	- Pour bien comprendre quelle est la meilleure approche à adopter, refais la carte avec uniquement des grilles
	- Adoptes le même fonctionnement que la question 2 mais encore une fois avec des grilles.
	- Conclusion : plus facile avec un conteneur grille ou flexible ? 

#### 4: Une "vrai" page — **PAS ENCORE DE CORRECTION**
1. Tentes de reproduire la page Figma le plus fidèlement possible. Le choix des technologies est laissé à ton appreciation.


#### 5: Design adaptatif (responsive) — **PAS ENCORE DE CORRECTION**
1. Point de culture personnelle (5min)
	- Renseignes toi sur ce sujet : comment les moteurs de recherche font pour départager les sites. Ici on cherche à créer un site qui va être affiché à la fois sur téléphone et ordinateur. La tailles d’écrans sont différentes et cela mène à certaines contraintes à respecter pour être mieux référencer par les moteurs de recherche. **ATTENTION** : Certains moteurs de recherche (Google notamment) n’affichent pas les sites contenant des pages ne respectant pas certaines de ces contraintes.
	- Dans notre cas, nous n’avons besoin de savoir qu’une chose : un site qui est conçu pour fonctionner sur téléphone et s’adapter aux ordinateurs est mieux référencé qu’un site conçu pour ordinateur et qui s’adapte aux téléphones. Les sites ne s’adaptent pas subissent de gros malus sur leur référencement.
2. Desktop first (25min)
	- Concevoir le HTML
	- Ajouter le CSS pour fonctionner sur un ordinateur
	- Tenter de réajuster le navigateur pour voir comment se comporte notre carte (utiliser l’inspecteur)
	- Ajouter du CSS pour adapter aux formats téléphones
3. Mobile first (10min)
	- Reprendre le HTML de la partie 2
	- Utilises l'inspecteur pour prendre un format téléphone
	- Ajouter le CSS pour fonctionner sur un téléphone
	- Tenter de réajuster le navigateur pour voir comment se comporte notre carte (utiliser l’inspecteur)
	- Ajouter du CSS pour adapter aux ordinateurs

### Partie 2 — Javascript (JS)

#### 1: Tableau de bord - Traqueur de temps — **EN COURS**

#### 2: Calcul de prix en fonction du trafic — **EN COURS**

#### 3: Calculatrice de réduction
Utilises le template correspondant. Le HTML et le CSS sont déjà conçus, mais tu peux essayer de les reproduire si tu le souhaites.
Tu ne dois pas modifier ni HTML ni CSS, seul le fichier script.js est à modifier.
Ton objectif est de rendre cette calculatrice de réductions opérationnelle. Elle doit calculer le montant de la réduction et le prix final.


### Partie 3 — SQL


### Partie 4 — PHP