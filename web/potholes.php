<?php

    require(__DIR__ . "/../cs50/bin/config.php");

    // ensure proper usage
    if (!isset($_GET["sw"], $_GET["ne"]))
    {
        http_response_code(400);
        exit;
    }

    // ensure each parameter is in lat,lng format
    if (!preg_match("/^-?\d+(?:\.\d+)?,-?\d+(?:\.\d+)?$/", $_GET["sw"]) ||
        !preg_match("/^-?\d+(?:\.\d+)?,-?\d+(?:\.\d+)?$/", $_GET["ne"]))
    {
        http_response_code(400);
        exit;
    }

    // explode southwest corner into two variables
    list($sw_lat, $sw_lng) = explode(",", $_GET["sw"]);

    // explode northeast corner into two variables
    list($ne_lat, $ne_lng) = explode(",", $_GET["ne"]);

    // find 10 potholes within view, pseudorandomly chosen if more within view
    // NOTE: changed code to find all potholes at the moment
    if ($sw_lng <= $ne_lng)
    {
        // doesn't cross the antimeridian
        // $rows = CS50::query("SELECT * FROM markers WHERE ? <= latitude AND latitude <= ? AND (? <= longitude AND longitude <= ?) GROUP BY city, street ORDER BY RAND() LIMIT 10", $sw_lat, $ne_lat, $sw_lng, $ne_lng);
        $rows = CS50::query("SELECT * FROM markers WHERE ? <= latitude AND latitude <= ? AND (? <= longitude AND longitude <= ?) GROUP BY city, street ORDER BY pubMillis DESC", $sw_lat, $ne_lat, $sw_lng, $ne_lng);
    }
    else
    {
        // crosses the antimeridian
        // $rows = CS50::query("SELECT * FROM markers WHERE ? <= latitude AND latitude <= ? AND (? <= longitude OR longitude <= ?) GROUP_BY city, street ORDER BY RAND() LIMIT 10", $sw_lat, $ne_lat, $sw_lng, $ne_lng);
        $rows = CS50::query("SELECT * FROM markers WHERE ? <= latitude AND latitude <= ? AND (? <= longitude OR longitude <= ?) GROUP_BY city, street ORDER BY pubMillis DESC", $sw_lat, $ne_lat, $sw_lng, $ne_lng);
    }

    // output places as JSON (pretty-printed for debugging convenience)
    header("Content-type: application/json");
    print(json_encode($rows, JSON_PRETTY_PRINT));

?>
