<?php

use JetBrains\PhpStorm\NoReturn;

require './form-utils.php';
require './db.php';

#[NoReturn] function http_redirect(string $url): void {
    header('Location: ' . $url);
    die();
}

// On teste si toutes les valeurs ont été renseigner.
// Si ce n'est pas le cas, on arrête.
if (!(isset($_POST['nom']) && isset($_POST['email']) && isset($_POST['radio']))) {
    http_redirect('/index.php?msg=' . urlencode('Merci de remplir correctement tous les champs.'));
}

// On récupère les valeurs des champs
$nom = $_POST['nom'];
$mail = $_POST['email'];
$radio = $_POST['radio'];

try {
    // On obtient la base de donnée
    $db = getDB();

    // On vérifie l'existence de la table, sinon on crée cette dernière
    initDB($db);

} catch (PDOException $e) {
    http_redirect('/index.php?msg=' . urlencode('Une erreur est survenue, réessayez plus tard.'));
}

// Si les données sont correctes, on enregistre et on affiche un message de succès.
if (
    checkEntry('nom', $nom)
    && checkEntry('email', $mail)
    && checkEntry('radio', $radio)
) {
    if (insertEntry($nom, $mail, $radio, $db)) {
        http_redirect('/index.php?msg=' . urlencode('Enregistrement effectué'));
    } else {
        http_redirect('/index.php?msg=' . urlencode('Erreur lors de l\'enregistrement.'));
    }
} else {
    http_redirect('/index.php?msg=' . urlencode('Erreur lors de l\'enregistrement : valeurs interdites.'));
}

?>