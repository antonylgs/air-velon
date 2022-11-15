<?php

require('models/get.php');
require('models/post.php');
require('utility.php');

function home()
{
    $cities = getAllCities();
    require('templates/home.php');
}

function city($city_id)
{
    $city = getCity($city_id);
    $logements = getLogements($city_id);
    require('templates/ville.php');
}

function logement($logement_id)
{
    $logement = getLogement($logement_id);
    $notes = getNote($logement_id);
    require('templates/logement.php');
}

function postReview($note, $id_logement)
{
    postNote($note, $id_logement);
    logement($id_logement);
}

function addPostPage()
{
    $cities = getAllCities();
    $logement_types = getAllLogementTypes();
    require('templates/add.php');
}

function newPost($nom_logement, $description_logement, $prix, $url, $nom_image, $ville, $type_logement, $hote, $superhote)
{
    $logement_id = addNewPost($nom_logement, $description_logement, $prix, $url, $nom_image, $ville, $type_logement, $hote, $superhote);
    logement($logement_id);
}
