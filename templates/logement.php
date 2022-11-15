<?php
$css = './styles/logement.css';
$title = $logement['nom_logement'];

ob_start()
?>
<?php include('navbar.php') ?>

<body>
    <main>
        <img src=<?= $logement['url'] ?> alt=<?= $logement['nom_image'] ?> class="logement-image">
        <div id="logement-infos">
            <?php if ($logement['superhote'] == 1) { ?>
                <div class="superhote">Superhôte</div>
            <?php } ?>
            <div class="note"><?php if (count($notes) > 0) {
                                    echo (moyenne($notes) . '/5');
                                } ?> (<?= count($notes) ?>)</div>
            <h1><?= $logement['nom_logement'] ?></h1>
            <p id="description"><?= $logement['description_logement'] ?></p>
            <p id="prix"><?= $logement['prix'] ?>€</p>
            <form action="./index.php?page=post-review&id-logement=<?= $logement['id'] ?>" method="POST">
                <label for="review">Attribuer une note<input type="range" min="0" max="5" value="3" name="review" id="review"></label>
                <input type="submit" value="Envoyer" id="submit-button">
            </form>
        </div>
    </main>
</body>
<?php
$content = ob_get_clean();
require('template.php');
