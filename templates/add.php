<?php
$css = './styles/add.css';
$title = 'Ajouter un logement';

ob_start()
?>
<?php include('navbar.php') ?>

<body>
    <form action="./index.php?page=new-post" method="POST">
        <label for="nom_logement">Nom du logement : <input type="text" name="nom_logement" id="nom_logement"></label>
        <label for="description_logement">Description du logement : <textarea id="description_logement" name="description_logement" rows="5" cols="33"></textarea></label>
        <label for="prix">Prix : <input type="number" name="prix" id="prix"></label>
        <label for="url">Url de l'image : <input type="text" name="url" id="url"></label>
        <label for="nom_image">Nom de l'image : <input type="text" name="nom_image" id="nom_image"></label>
        <label for="ville">Ville :
            <select name="ville" id="ville">
                <?php foreach ($cities as $city) { ?>
                    <option value=<?= $city['id'] ?>><?= $city['nom'] ?></option>
                <?php } ?>
            </select>
        </label>
        <label for="type_logement"> Type de logement :
            <select name="type_logement" id="type_logement">
                <?php foreach ($logement_types as $logement_type) { ?>
                    <option value=<?= $logement_type['id'] ?>><?= ucfirst($logement_type['nom_type']) ?></option>
                <?php } ?>
            </select>
        </label>
        <label for="hote">Nom de l'hôte : <input type="text" name="hote" id="hote"></label>
        <label for="superhote"> Superhôte :
            <select name="superhote" id="superhote">
                <option value="1">Oui</option>
                <option value="0">Non</option>
            </select>
        </label>
        <button type="submit" class="go-button">Poster</button>
    </form>
</body>
<?php
$content = ob_get_clean();
require('template.php');
