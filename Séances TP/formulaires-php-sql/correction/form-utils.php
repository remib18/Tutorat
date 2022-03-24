<?php

/**
 * Effectue une vérification sur un champ entré en paramètre
 *
 * @param string $type Le type d'entrée (nom, email ou radio)
 * @param string $entry Le champ à tester
 *
 * @throws Error En cas de type non conforme.
 * @return bool Le champ est-il valide ?
 */
function checkEntry(string $type, string $entry): bool {
    $entriesRegEx = [
        'nom' => '/^[[:alpha:] \-éëèàæœêîïüûäâìùòñç]{3,}$/',
        'email' => '/^[0-9a-zA-Z_\-.]{4,}@[0-9a-zA-Z_\-]{2,}\.[a-z]{2,}$/'
    ];

    switch ($type) {
        case 'nom':
        case 'email':
            preg_match($entriesRegEx[$type], $entry, $matches, PREG_OFFSET_CAPTURE);
            return $matches !== [];

        case 'radio':
            return in_array((string)$entry, ['default', '1', '2', '3']);

        default:
            throw new Error('Unexpected type.');
    }

}

/**
 * Enregistre les données dans la base de donnée
 *
 * @param string $name Le champ nom à insérer
 * @param string $email Le champ email à insérer
 * @param string $radio Le champ radio à insérer
 *
 * @param PDO $db La base de donnée
 *
 * @return bool La donnée a bien été enregistrée ?
 */
function insertEntry(string $name, string $email, string $radio, PDO $db): bool {
    try {
        $db->query("
            INSERT INTO formulaire(nom, email, radio)
            VALUE ('$name', '$email', '$radio')
        ");
    } catch (PDOException $e) {
        return false;
    }
    return true;
}