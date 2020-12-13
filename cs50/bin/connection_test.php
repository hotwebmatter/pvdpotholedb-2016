#!/usr/bin/env php
<?php
$mysqli = new mysqli("localhost", "matt_obert", "v1kCjsvLYytrBTGV", "webothmatter_pvd");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "\n";
