#!/usr/bin/env php
<?php

    // TODO: import potholes from Waze GeoJSON feed into mySQL db

    // display errors, warnings, and notices
    ini_set("display_errors", true);
    error_reporting(E_ALL);

    // CS50 Library
    require("./vendor/library50-php-5/CS50/CS50.php");
    CS50::init(__DIR__ . "/../config.json");

    // read the data from Waze GeoJSON
    $url = 'https://na-georss.waze.com/rtserver/web/TGeoRSS?tk=ccp_partner&ccp_partner_name=Providence&format=JSON&types=alerts&polygon=-71.440487,41.866467;-71.374741,41.858029;-71.375427,41.828744;-71.395512,41.810450;-71.373367,41.785033;-71.405811,41.764486;-71.445465,41.786057;-71.446238,41.801095;-71.489410,41.817281;-71.440487,41.866467;-71.440487,41.866467';
    $content = file_get_contents($url);
    if ($content === false)
    {
        echo("ERROR: Could not connect to Waze GeoJSON.");
    }
    $json = json_decode($content, true);

//   foreach($json['data']['weather'] as $item) {
//     print $item['date'];
//     print ' - ';
//     print $item['weatherDesc'][0]['value'];
//     print ' - ';
//     print '<img src="' . $item['weatherIconUrl'][0]['value'] . '" border="0" alt="" />';
//     print '<br>';
//   }
    foreach($json['alert'] as $item) {
      if ($item['subtype'] === "HAZARD_ON_ROAD_POT_HOLE")
      {
        // put it in the database
        // $fields = "country_code, postal_code, place_name, admin_name1, admin_code1, admin_name2, admin_code2, admin_name3, admin_code3, latitude, longitude, accuracy";

        // $result = CS50::query("INSERT IGNORE INTO places ($fields) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", $data[0], $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], $data[8], $data[9], $data[10], $data[11]);
        if ($result === false)
        {
            echo("ERROR: Could not connect to database.");
        }
      }
    }

?>
