<?php

$nom = isset($_GET['nom']) ? urldecode($_GET['nom']) : '';
$email = isset($_GET['email']) ? urldecode($_GET['email']) : '';
$selectedRadio = isset($_GET['radio']) ? urldecode($_GET['radio']) : NULL;
$message = isset($_GET['msg']) ? urldecode($_GET['msg']) : '';

$radioOptions = ['default', '1', '2', '3'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<p><?= $message ?></p>

<form action="./handler.php" method="post">

    <input type="text" name="nom" aria-label="Nom" placeholder="Nom" value="<?= $nom ?>" required>

    <input type="email" name="email" aria-label="Email" placeholder="Email" value="<?= $email ?>" required>

    <?php foreach ($radioOptions as $option): ?>
        <input type="radio" name="radio" value="<?= $option ?>" aria-label="Option <?= $option ?>"
            <?= $option === $selectedRadio ? 'checked' : '' ?> <?= $option === $radioOptions[0] ? 'required' : '' ?>>
    <?php endforeach; ?>


    <input type="submit" value="Envoyer">

</form>

</body>
</html>