<?php

/**
 * Etablit la connection à la base de donnée
 *
 * Tu dois avoir Mysql d'installer pour que cela fonctionne
 * @throws PDOException En cas d'erreur lors de la connection.
 * @return PDO
 */
function getDB(): PDO {
    $host = "localhost";    // L'adresse du serveur (localhost = 127.0.0.1 = ta machine)
    $db = "tutorat";        // La base de donnée qu'on va utiliser
    $user = 'root';         // L'utilisateur
    $password = NULL;       // Le mot de passe

    return new  PDO('mysql:dbname=' . $db . ';host=' . $host, $user, $password);
}

/**
 * Initialize la base de donnée si elle ne l'est pas déjà
 *
 * @param PDO $db
 * @return void
 */
function initDB(PDO $db): void {
    $db->query("
        CREATE TABLE IF NOT EXISTS formulaire (
            id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
            nom VARCHAR(255) NOT NULL,
            email VARCHAR(255) NOT NULL,
            radio VARCHAR(255) NOT NULL
        );
    ");
}