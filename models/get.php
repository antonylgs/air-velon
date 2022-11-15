<?php

require_once('database.php');

function getAllCities()
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT * FROM ville');
    $req->execute();
    $data = $req->fetchAll(PDO::FETCH_ASSOC);
    return $data;
}

function getAllLogementTypes()
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT * FROM type_logement');
    $req->execute();
    $data = $req->fetchAll(PDO::FETCH_ASSOC);
    return $data;
}

function getLogements($city_id)
{
    $db = databaseConnection();
    /*$req = $db->prepare('SELECT logement.id, logement.nom_logement, logement.description_logement, note.note, hote.superhote, image.nom_image, image.url FROM logement, hote, note, image WHERE logement.id_ville = ' . $city_id . ' AND note.id_logement = logement.id AND logement.id_hote = hote.id AND image.id_logement = logement.id');*/

    // je ne sais pas pourquoi mais la requête sql d'au dessus me renvoyait plusieurs fois le même logement, et pas une fois chaque logement dans un array donc j'ai du diviser les requêtes en plusieurs fonctions ...


    $req = $db->prepare('SELECT id, nom_logement, description_logement FROM logement WHERE logement.id_ville = ? ORDER BY date_post DESC');
    $req->execute([$city_id]);
    $data = $req->fetchAll(PDO::FETCH_ASSOC);
    return $data;
}

function getLogement($logement_id)
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT logement.id, nom_logement, description_logement, prix, superhote, nom_image, url FROM logement, hote, image WHERE logement.id = ? AND logement.id_hote = hote.id AND image.id_logement = logement.id');
    $req->execute([$logement_id]);
    $data = $req->fetch(PDO::FETCH_ASSOC);
    return $data;
}

function getNote($logement_id)
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT note FROM note WHERE note.id_logement = ?');
    $req->execute([$logement_id]);
    $data = $req->fetchAll(PDO::FETCH_ASSOC);
    return $data;
}

function getSuperhote($logement_id)
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT superhote FROM hote, logement WHERE logement.id = ? AND logement.id_hote = hote.id');
    $req->execute([$logement_id]);
    $data = $req->fetch(PDO::FETCH_ASSOC);
    return $data;
}

function getImage($logement_id)
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT url FROM image WHERE id_logement = ?');
    $req->execute([$logement_id]);
    $data = $req->fetch(PDO::FETCH_ASSOC);
    return $data;
}

function getCity($city_id)
{
    $db = databaseConnection();
    $req = $db->prepare('SELECT * FROM ville WHERE ville.id = ' . $city_id);
    $req->execute();
    $data = $req->fetch(PDO::FETCH_ASSOC);
    return $data;
}
