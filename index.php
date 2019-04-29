
<?php

    require(__DIR__ . "/../../cs50/bin/config.php");

        $total = CS50::query("SELECT COUNT(*) FROM markers");
//    print_r($total);
    $total_count = $total[0]["COUNT(*)"];
//    print_r("total_count: " . $total_count . "\n");
    $providence = CS50::query("SELECT COUNT(*) FROM markers WHERE city = ?","Providence, RI");
//    print_r($providence);
    $providence_count = $providence[0]["COUNT(*)"];
    $cranston = CS50::query("SELECT COUNT(*) FROM markers WHERE city = ?","Cranston, RI");
//    print_r($cranston);
    $cranston_count = $cranston[0]["COUNT(*)"];
    $johnston = CS50::query("SELECT COUNT(*) FROM markers WHERE city = ?","Johnston, RI");
//    print_r($johnston);
    $johnston_count = $johnston[0]["COUNT(*)"];
    $other_count = $total_count - ($providence_count + $cranston_count + $johnston_count);
//    print_r($other_count);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Providence Pothole Database</title>

    <!-- W3.CSS -->
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

    <!-- app's own CSS -->
    <!-- <link href="/css/styles.css" rel="stylesheet"/> -->

    <!-- Google Maps API Key -->
    <!-- https://developers.google.com/maps/documentation/javascript/ -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD85z6kMhFUihHp-dwjtbF-qeZ4aPFKWEg"></script>

    <!-- https://github.com/nmccready/google-maps-utility-library-v3-markerwithlabel (NEW HOTNESS) -->
    <script src="/js/markerwithlabel_packed.js"></script>

    <!-- app's own JavaScript -->
    <script src="/js/scripts.js"></script>

</head>

<body>

<header class="w3-container w3-teal">
  <h1>PVD Pothole DB</h1>
  <p>
  Crowdsourcing pothole reporting since August 2016
  </p>
</header>

<div class="w3-row-padding w3-section">

<div class="w3-half">
  <div class="w3-card-2">
<h3 class="w3-teal">&nbsp;What We've Done:</h3>
    <div class="w3-container">
<ul>
  <li>Collect ephemeral alerts from <a href="https://na-georss.waze.com/rtserver/web/TGeoRSS?tk=ccp_partner&ccp_partner_name=Providence&format=JSON&types=alerts&polygon=-71.440487,41.866467;-71.374741,41.858029;-71.375427,41.828744;-71.395512,41.810450;-71.373367,41.785033;-71.405811,41.764486;-71.445465,41.786057;-71.446238,41.801095;-71.489410,41.817281;-71.440487,41.866467;-71.440487,41.866467" target="_blank">Waze app data stream</a></li>
  <li>Build a <a href="data.php" target="_blank">persistent database of reported potholes</a></li>
  <li>Create <a href="map.html" target="_blank">interactive data visualization</a> with Google Maps</li>
  <li>Make <a href="https://github.com/hotwebmatter/Waze2db" target="_blank">source code</a> available for all to share on Github</li>
</ul>

    </div>
  </div>
</div>

<div class="w3-half">
  <div class="w3-card-2">
<h3 class="w3-teal">&nbsp;What's Next:</h3>
    <div class="w3-container">
<ul>
  <li>Notify Department of Public Works via <a href="http://www.programmableweb.com/api/publicstuff" target="_blank">PublicStuff API</a></li>
  <li>Receive alerts via PublicStuff when potholes are fixed
  <li>Extend the database; help other cities use Waze data</li>
  <li>Share data with other developers through a public API</li>
</ul>

    </div>
  </div>
</div>


<div class="w3-container">
  <p>&nbsp;</p>
  <div id="map-canvas" style="width:100%"></div>
</div>

<div class="w3-container">

<table class="w3-table w3-bordered w3-striped">
<tr class="w3-teal">
  <th>City</th>
  <th>Pothole Alerts</th>
</tr>
<tr>
  <td>Providence</td>
  <td><?= $providence_count ?></td>
</tr>
<tr>
  <td>Cranston</td>
  <td><?= $cranston_count ?></td>
</tr>
<tr>
  <td>Johnston</td>
  <td><?= $johnston_count ?></td>
</tr>
<tr>
  <td>Other</td>
  <td><?= $other_count ?></td>
</tr>
<tr>
  <td>TOTAL</td>
  <td><?= $total_count ?></td>
</tr>
</table>

</div>
</div>

<footer class="w3-container w3-teal">
  <p>&copy; 2016 Matthew Obert
  <br />
  (<a href="http://hotwebmatter.com" target="_blank">Hot Web Matter</a>)
  <br />
  Built with <a href='http://www.w3schools.com/w3css/' target='_blank'>W3.CSS</a></p>
</footer>

</body>
</html> 
