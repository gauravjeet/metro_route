<?php
define('SERVER', '127.0.0.1');
define('USERNAME', 'root');
define('PASSWORD', 'root');
define('DATABASE', 'metro');
define('TABLE', 'statn_graph');
define('JUNCTION_TABLE', 'junctions');
define('LATLONG_TABLE', 'location');
define('API_KEY', 'AIzaSyAHp1mwSB-jUQ7r_vfgB-QiygaFQnWhV7g');

// Function for select query.
function select_query($conn = NULL, $table = NULL, $cols = '*', $condition = NULL, $andor = 'AND') {
  $query = 'SELECT ';
  $base = '';

  // Add columns to query.
  if ($cols != '*') {
    foreach ($cols as $colname) {
      $base .= $colname . ', ';
    }
    $query .= rtrim($base, ', ') . ' FROM ' . $table . ' ';
  }
  else {
    $query .= $cols . ' FROM ' . $table . ' ';
  }

  $base = '';
  // Add conditions to query.
  if ($condition != NULL) {
    $query .= 'WHERE ';

    foreach ($condition as $name => $value) {
      $base .= $name . ' = "' . $value . '"';

      // Check for more conditions.
      if (count($condition) > 1) {
        $base .= ' ' . $andor . ' ';
      }
    }
    $base = rtrim($base, ' ' . $andor . ' ');
  }
  $query .= $base;
  $result = mysqli_query($conn, $query);
  return $result;
}


// Function for insert query.
function insert_query($conn = NULL, $table = NULL, $values = array()) {
  $query = 'INSERT INTO ' . $table . ' VALUES(';
  $base = '';

  foreach ($values as $key => $val) {
    $base .= '"' . $val . '", ';
  }
  $query .= rtrim($base, ', ') . ')';

  mysqli_query($conn, $query);
  return TRUE;
}

//Function for update query.
function update_query($conn, $table, $cols, $condition = array(), $andor = 'AND') {
  $query = 'UPDATE ' . $table . ' SET ';
  $base = '';

  // Add columns to set to query.
   foreach ($cols as $key => $value) {
    $base .= $key . '="' . $value . '", ';
  }
  $query .= rtrim($base, ', ') . ' WHERE ';

  $base = '';
  // Add conditions to query.
  foreach ($condition as $name => $value) {
    $base .= $name . ' = "' . $value . '"';

    // Check for more conditions.
    if (count($condition) > 1) {
      $base .= ' ' . $andor . ' ';
    }
  }
  $base = rtrim($base, ' ' . $andor . ' ');
  $query .= $base;
  mysqli_query($conn, $query);
  return TRUE;
}
?>
