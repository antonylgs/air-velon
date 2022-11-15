<?php

require_once('database.php');

function postNote($note, $id_logement)
{
    $db = databaseConnection();
    $post = $db->prepare('INSERT INTO note(note, id_logement) VALUES(?, ?)');
    $post->execute([$note, $id_logement]);
}

function addNewPost($nom_logement, $description_logement, $prix, $url, $nom_image, $ville, $type_logement, $hote, $superhote)
{
    $db = databaseConnection();
    $post = $db->prepare('INSERT INTO hote(nom_hote, superhote) VALUES(?, ?)');
    $post->execute([$hote, $superhote]);

    $hote_id = $db->lastInsertId();

    $post = $db->prepare('INSERT INTO logement(nom_logement, description_logement, prix, date_post, id_type_logement, id_ville, id_hote) VALUES(?, ?, ?, NOW(), ?, ?, ?)');
    $post->execute([$nom_logement, $description_logement, $prix, $type_logement, $ville, $hote_id]);

    $logement_id = $db->lastInsertId();

    $post = $db->prepare('INSERT INTO image(nom_image, url, id_logement) VALUES(?, ?, ?)');
    $post->execute([$nom_image, $url, $logement_id]);

    return $logement_id;
}
