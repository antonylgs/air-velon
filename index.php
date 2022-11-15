<?php

require_once('controller.php');

if (isset($_GET['page'])) {
    if ($_GET['page'] === 'ville') {
        city($_POST['searched-city']);
    } elseif ($_GET['page'] === 'logement') {
        logement($_GET['id-logement']);
    } elseif ($_GET['page'] === 'post-review') {
        postReview($_POST['review'], $_GET['id-logement']);
    } else if ($_GET['page'] === 'add-post') {
        addPostPage();
    } else if ($_GET['page'] === 'new-post') {
        newPost($_POST['nom_logement'], $_POST['description_logement'], $_POST['prix'], $_POST['url'], $_POST['nom_image'], $_POST['ville'], $_POST['type_logement'], $_POST['hote'], $_POST['superhote']);
    }
} else {
    home();
}
