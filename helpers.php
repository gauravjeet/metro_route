<?php
require_once('dbase_layer.php');

/**
 * Function to set initial distances for each station.
 */
function set_initial_distances(&$dist, &$prev, $all) {

  // Set initial distances to the source station.
  foreach ($all as $st) {
    $dist[$st] = INF;
    $prev[$st] = NULL;
  }
}

/**
 * Function to calculate minimum distance.
 */
function min_dist($dist, $all) {
  $min = INF;
  foreach ($all as $one) {
    if ($dist[$one] < $min) {
      $min = $dist[$one];
      $value = $one;
    }
  }
  return $value;
}

/**
 * Function to calculate shortest path.
 */
function dijkstra_path($source, $destination) {
  $path = '';
  $stations = array();
  $neighbors = array();
  $prev = array();
  $route = array();
  $current_station = $source;

  // Get details of the connections.
  $stations = load_stations();
  load_stations($given_distances);

  foreach ($given_distances as $stn => $details) {
    foreach ($details as $substn => $distance) {
      $neighbors[$stn][] = array("next" => $substn, "distance" => $distance);
    }
  }
  
  // Initialize distances and merge given and blank distances.
  set_initial_distances($dist, $prev, $stations);

  $dist[$current_station] = 0;
  //$all = $stations;

  while (count($stations) > 0) {

    // Get minimum distance station.
    $min = min_dist($dist, $stations);
    $stations = array_diff($stations, array($min));

    if ($dist[$min] == INF || $min == $destination) {
        break;
    }

    if (isset($neighbors[$min])) {
      foreach ($neighbors[$min] as $arr) {
        $alt = $dist[$min] + $arr["distance"];
        if ($alt < $dist[$arr["next"]]) {
          $dist[$arr["next"]] = $alt;
          $prev[$arr["next"]] = $min;
        }
      }
    }
  }

  // Get Junction stations.
  get_junctions($juncs);

  // Return the traversal path found.
  while (isset($prev[$destination])) {
    array_unshift($route, $destination);
    $destination = $prev[$destination];
  }
  array_unshift($route, $destination);

  // Return path in a presentable manner.
  $td = -1;
  $path .= '<table cellspacing="5px" cellpadding="1px" style="margin-left: 10%; width: 80%;text-align:center;">';
  $path .= '<tr>';
  foreach ($route as $station) {
    if ($td < 8) {
      if ($td % 2 == 0) {
        $color = '#fafafa';
      }
      else {
        $color = '#f2f2f2';
      }
      ++$td;
    }
    else {
      $td = 0;
      $path .= '</tr>';
      $path .= '<tr>';
    }

    if (in_array($station, $juncs)) {
      $path .= '<td style="background-color:' . $color . ';"><i style="color:red;">' . $station . '</i></td>';
    }
    else {
      $path .= '<td style="background-color:' . $color . ';">' . $station . '</td>';
    }
    $path .= '<td>></td>';
  }
  $path .= '<td style="background-color: #3adf00;">Journey ends</td>';
  $path .= '</tr>';
  $path .= '</table>';

  return array(
    'distance' => $alt,
    'raw_path' => $route,
    'rendered_path' => $path,
  );
}

/**
 * Function to get all junctions.
 */
function get_junctions(&$juncs) {

  // Connect to mysql server.
  $conn = mysqli_connect(SERVER, USERNAME, PASSWORD) or die('MySQL connection could not be established');

  // Select database.
  $db = mysqli_select_db($conn, DATABASE) or die('Could not select MySQL database');

  // Select all distinct stations.
  $result = select_query($conn, JUNCTION_TABLE, array('statn_name'));

  while($row = mysqli_fetch_assoc($result)) {
    $juncs[] = $row['statn_name'];
  }
  mysqli_close($conn);
}

/**
 * Function to get latitude and longitude values.
 */
function get_latlongs() {

  // Connect to mysql server.
  $conn = mysqli_connect(SERVER, USERNAME, PASSWORD) or die('MySQL connection could not be established');

  // Select database.
  $db = mysqli_select_db($conn, DATABASE) or die('Could not select MySQL database');

  // Select all distinct stations.
  $result = select_query($conn, LATLONG_TABLE, array('station', 'lat', 'longi'));

  while($row = mysqli_fetch_assoc($result)) {
    $latlong[$row['station']]['lat'] = $row['lat'];
    $latlong[$row['station']]['long'] = $row['longi'];
  }
  mysqli_close($conn);
  return $latlong;
}

/**
 * Function to find all stations in the map.
 */
function load_stations(&$given_distances = array()) {

  // Connect to mysql server.
  $conn = mysqli_connect(SERVER, USERNAME, PASSWORD) or die('MySQL connection could not be established');

  // Select database.
  $db = mysqli_select_db($conn, DATABASE) or die('Could not select MySQL database');

  // Select all distinct stations.
  $result = select_query($conn, TABLE, array('sorce', 'desti', 'distt'));

  while($row = mysqli_fetch_assoc($result)) {
    $given_distances[$row['sorce']][$row['desti']] = $row['distt'];
    $src[] = $row['sorce'];
    $des[] = $row['desti'];
  }

  // Get all stations.
  $stations = array_merge($src, $des);
  $stations = array_unique($stations);

  // Correct the indexes of this array.
  $stations = array_values($stations);
  mysqli_close($conn);
  return $stations;
}
