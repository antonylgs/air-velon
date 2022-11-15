<?php

$css = './styles/ville.css';
$title = 'Logements à ' . $city['nom'];

ob_start()
?>
<?php include('navbar.php') ?>

<body>
    <h1>Hébergements à <?= $city['nom'] ?></h1>
    <main>
        <?php
        if (count($logements) > 0) {
            foreach ($logements as $logement) {
                $notes = getNote($logement['id']);
                $superhote = getSuperhote($logement['id']);
                $image = getImage($logement['id']);
        ?>
                <a href="./index.php?page=logement&id-logement=<?= $logement['id'] ?>">
                    <div class="logement">
                        <?php if ($superhote['superhote'] == 1) { ?>
                            <div class="superhote">Superhôte</div>
                        <?php } ?>
                        <img src='<?= $image['url'] ?>' alt="Image du logement" class="logement-image">
                        <div class="note"><?php if (count($notes) > 0) {
                                                echo (moyenne($notes) . '/5');
                                            } ?> (<?= count($notes) ?>)</div>
                        <h2><?= $logement['nom_logement'] ?></h2>
                    </div>
                </a>
        <?php }
        } else {
            echo ('Aucun logement disponible dans cette ville actuellement');
        } ?>
    </main>
</body>
<?php
$content = ob_get_clean();
require('template.php');
