<?php

    require(__DIR__ . "/includes/config.php");

    // numerically indexed array of places
    $places = [];
    
    // numerically indexed array of tokens
    $tokens = [];
    
    // associative array of state abbreviations
    $states = array(
        "AL"=>"Alabama",
        "AK"=>"Alaska",
        "AZ"=>"Arizona",
        "AR"=>"Arkansas",
        "CA"=>"California",
        "CO"=>"Colorado",
        "CT"=>"Connecticut",
        "DE"=>"Delaware",
        "DC"=>"District Of Columbia",
        "FL"=>"Florida",
        "GA"=>"Georgia",
        "HI"=>"Hawaii",
        "ID"=>"Idaho",
        "IL"=>"Illinois",
        "IN"=>"Indiana",
        "IA"=>"Iowa",
        "KS"=>"Kansas",
        "KY"=>"Kentucky",
        "LA"=>"Louisiana",
        "ME"=>"Maine",
        "MD"=>"Maryland",
        "MA"=>"Massachusetts",
        "MI"=>"Michigan",
        "MN"=>"Minnesota",
        "MS"=>"Mississippi",
        "MO"=>"Missouri",
        "MT"=>"Montana",
        "NE"=>"Nebraska",
        "NV"=>"Nevada",
        "NH"=>"New Hampshire",
        "NJ"=>"New Jersey",
        "NM"=>"New Mexico",
        "NY"=>"New York",
        "NC"=>"North Carolina",
        "ND"=>"North Dakota",
        "OH"=>"Ohio",
        "OK"=>"Oklahoma",
        "OR"=>"Oregon",
        "PA"=>"Pennsylvania",
        "PR"=>"Puerto Rico",
        "RI"=>"Rhode Island",
        "SC"=>"South Carolina",
        "SD"=>"South Dakota",
        "TN"=>"Tennessee",
        "TX"=>"Texas",
        "UT"=>"Utah",
        "VT"=>"Vermont",
        "VI"=>"Virgin Islands",
        "VA"=>"Virginia",
        "WA"=>"Washington",
        "WV"=>"West Virginia",
        "WI"=>"Wisconsin"
        );
    
    // If $_GET["geo"] contains commas, explode into tokens.
    
    // $tokens = explode(",", $_GET["geo"]);
    
    // If one of the tokens is a two-letter state abbreviation (admin_code1), substitute full state name
    // foreach ($tokens as &$token)
    // {
    //     if (strlen($token) == 2)
    //     {
    //         $token = $states["$token"];
    //     }
    // }
    // TODO: Rebuild search query IN BOOLEAN MODE and pass this string to (?) below instead of $_GET["geo"]
    // $query = implode($tokens);
    // $tokens = explode($query);
    // foreach ($tokens as &$token)
    // {
    //    $token = "+" . $token;
    // }
    // $query = implode($tokens) . " IN BOOLEAN MODE";

    // TODO: search database for places matching $_GET["geo"], store in $places
    $places = CS50::query("SELECT * FROM `places` WHERE MATCH (`place_name`,`admin_name1`,`admin_name2`,`postal_code`) AGAINST (?)", $_GET["geo"] . "%");
    // $places = CS50::query("SELECT * FROM `places` WHERE MATCH (`place_name`,`admin_name1`,`admin_name2`,`postal_code`) AGAINST (?)", $query);

    // output places as JSON (pretty-printed for debugging convenience)
    header("Content-type: application/json");
    print(json_encode($places, JSON_PRETTY_PRINT));

?>
