<?php

function moyenne($numbers)
{
    $somme = 0;

    foreach ($numbers as $number) {
        $somme += $number['note'];
    }

    $moyenne = $somme / count($numbers);

    return round($moyenne, 1);
}
