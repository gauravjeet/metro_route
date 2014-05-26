<?php
require_once('helpers.php');

  // Get all latitude and longitude values.
  $latlong = get_latlongs();
  $useful_latlong = array();
  $raw = isset($_POST['raw_path']) ? $_POST['raw_path'] : array();

  // Get related latitude and longitude values.
  foreach ($raw as $val) {
    if (isset($latlong[$val])) {
      $useful_latlong[$val] = $latlong[$val];
    }
  }
  echo json_encode(array('latlongs' => $useful_latlong));
?>
