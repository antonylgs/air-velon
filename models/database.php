<?php

function databaseConnection()
{
    return new PDO('mysql:host=localhost;dbname=airbnb_velon;charset=utf8', 'root', 'root');
}
