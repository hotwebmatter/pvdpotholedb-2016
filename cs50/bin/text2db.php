#!/usr/bin/env php54
<?php

    // TODO: import potholes from Waze GeoJSON feed into mySQL db

    // display errors, warnings, and notices
    ini_set("display_errors", true);
    error_reporting(E_ALL);

    echo date('Y-m-d H:i:s') . ": ";

    // CS50 Library
    require("./vendor/library50-php-5/CS50/CS50.php");
    CS50::init(__DIR__ . "/config.json");

    // PHP MySQLi connection
    // $mysqli = new mysqli("localhost", "matt_obert", "v1kCjsvLYytrBTGV", "webothmatter_pvd");
    // if ($mysqli->connect_errno) {
    //   echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    // }
    // echo $mysqli->host_info . "\n";

    // PDO connection
//  $pdo = new PDO('mysql:host=localhost;dbname=webothmatter_pvd', 'matt_obert', 'v1kCjsvLYytrBTGV');
//  if ($pdo === false)
//  {
//      echo("ERROR: Could not connect to database.");
//  }

    // read the data from Waze GeoJSON
    $url = 'https://na-georss.waze.com/rtserver/web/TGeoRSS?tk=ccp_partner&ccp_partner_name=Providence&format=JSON&types=alerts&polygon=-71.440487,41.866467;-71.374741,41.858029;-71.375427,41.828744;-71.395512,41.810450;-71.373367,41.785033;-71.405811,41.764486;-71.445465,41.786057;-71.446238,41.801095;-71.489410,41.817281;-71.440487,41.866467;-71.440487,41.866467';
    // $content = file_get_contents($url);
    // if ($content === false)
    // {
    //     echo("ERROR: Could not connect to Waze GeoJSON.");
    // }
    $content = file_get_contents(__DIR__ . "/data.json");
    if ($content === false)
    {
        echo("ERROR: Could not open local text file to read Waze GeoJSON data.");
    }
    // echo $content;
    // $json = json_decode($content, TRUE); // TRUE returns JSON as a PHP array
    $json = json_decode($content); // without TRUE, returns JSON as object (?)

    print(json_encode($json, JSON_PRETTY_PRINT));
    // var_dump($json);

    foreach($json->alerts as $item)
    {
        // var_dump($item);
        if ($item->subtype === "HAZARD_ON_ROAD_POT_HOLE")
        {
            echo("Got one!\n");
            // put it in the database
            $fields = "pubMillis, timesUpdated, locationX, locationY, roadType, street, country, city, type, subtype, magvar, reportRating, confidence, reliability";
            $result = CS50::query("INSERT IGNORE INTO `markers` ($fields) VALUES(?, 1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE timesUpdated = timesUpdated + 1", $item->pubMillis, $item->location->x, $item->location->y, $item->roadType, $item->street, $item->country, $item->city, $item->type, $item->subtype, $item->magvar, $item->reportRating, $item->confidence, $item->reliability);
            // if (!$mysqli->query("INSERT IGNORE INTO `markers` ($fields) VALUES(?, 1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE timesUpdated = timesUpdated + 1", $item->pubMillis, $item->location->x, $item->location->y, $item->roadType, $item->street, $item->country, $item->city, $item->type, $item->subtype, $item->magvar, $item->reportRating, $item->confidence, $item->reliability)
            // {
            //   echo "Table creation failed: (" . $mysqli->errno . ") " . $mysqli->error;
            // }
            // $result = $pdo->query("INSERT IGNORE INTO `markers` ($fields) VALUES(?, 1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE timesUpdated = timesUpdated + 1", $item->pubMillis, $item->location->x, $item->location->y, $item->roadType, $item->street, $item->country, $item->city, $item->type, $item->subtype, $item->magvar, $item->reportRating, $item->confidence, $item->reliability);
        }
    }

?>