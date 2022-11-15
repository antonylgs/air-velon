<?php

$css = './styles/index.css';
$title = 'Air Velon';

ob_start();
?>

<body>
    <a href="./index.php"><img src="./logo-air-velon.png" alt="Logo Air Velon" id="logo"></a>
    <form action="./index.php?page=ville" method="POST">
        <select name="searched-city" id="searched-city">
            <?php foreach ($cities as $city) { ?>
                <option value=<?= $city['id'] ?>><?= $city['nom'] ?></option>
            <?php } ?>
        </select>
        <button type="submit" id="go-button">GO</button>
    </form>
    <a href="./index.php?page=add-post"><button id="go-button">Ajouter</button></a>
</body>
<?php
$content = ob_get_clean();
require('template.php');
