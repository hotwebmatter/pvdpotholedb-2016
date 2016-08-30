<?php

    require(__DIR__ . "/../../cs50/bin/config.php");

    // TODO: search database for places matching $_GET["geo"], store in $places
    // $markers = CS50::query("SELECT * FROM `markers` WHERE MATCH (`street`,`city`) AGAINST (?)", $_GET["q"] . "%");
    $markers = CS50::query("SELECT subtype, latitude, longitude, roadType, street, city, pubMillis FROM `markers`");

    // output places as JSON (pretty-printed for debugging convenience)
    header("Content-type: application/json");
    print(json_encode($markers, JSON_PRETTY_PRINT));

?>
