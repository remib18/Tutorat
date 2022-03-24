<?php

// On teste si toutes les valeurs ont été renseigner.
// Si ce n'est pas le cas, on arrête.
if (!(isset($_POST['nom']) && isset($_POST['email']) && isset($_POST['radio']))) {
    die('Vous devez fournir toutes les données.');
}

// On récupère les valeurs des champs
$nom = $_POST['nom'];
$mail = $_POST['email'];
$radio = $_POST['radio'];

// On vérifie la validité du mail
preg_match(
    '/^[0-9a-zA-Z_\-]{4,}@[0-9a-zA-Z_\-]{2,}\.[a-z]{2,}$/',
    $mail, $matches, PREG_OFFSET_CAPTURE
);

// Affiche le résultat de la regex en mode débogage
var_dump($matches);

// Todo: finir les vérifications

// Variables pour la connection à la base de données
// On utilise le protocole mysql (il te faut donc un serveur mysql pour reproduire)
// Note, on n'a pas de mot de passe pour l'utilisateur root
// Attention, on utilise l'utilisateur root pour nous simplifier la vie ici. C'est une mauvaise pratique.
$host = "localhost";    // L'adresse du serveur (localhost = 127.0.0.1 = ta machine)
$db = "tutorat";        // La base de donnée qu'on va utiliser
$user = 'root';         // L'utilisateur
$password = NULL;       // Le mot de passe

// On effectue la connection
// Si elle ne se passe pas comme prévu, on arrête le programme
// (dans ce cas, vérifie que ton serveur mysql est bien lancé)
try {
    $pdo = new  PDO('mysql:dbname=' . $db . ';host=' . $host, $user, $password);
} catch (PDOException $e) {
    die("Erreur connection.");
}

// On exécute des requêtes

$pdo->query("
CREATE TABLE IF NOT EXISTS formulaire (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    radio VARCHAR(255) NOT NULL
);");


$pdo->query("
    INSERT INTO test (nom, email, radio)
    VALUE ('$nom', '$mail', '$radio')
");

?>

<!-- On rajoute un peu de html pour vérifier que des données malveillantes ne sont pas fournis -->
<!-- Par exemple, sans les vérifications, essaies de rentrer ceci dans l'input nom de la page précédente :
    '"><h1>Salut</h1>' -->
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <input type="text" name="nom" aria-label="Nom" value="<?= $nom ?>">
</body>
</html>