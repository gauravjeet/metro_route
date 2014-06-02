<?php
require_once('helpers.php');

if (isset($_POST['source']) && isset($_POST['destination'])) {
  $source = $_POST['source'];
  $dest = $_POST['destination'];

  if ($source == '-------- Select Source --------' || $dest == '----- Select Destination -----') {?>
    <?php $result['rendered_path'] = '<div id="result"><p style="color:red;">Enter source and destination values.</p></div>'; ?>
  <?php
  }
  else if ($source == $dest) {
  ?>
    <?php $result['rendered_path'] = '<div id="result"><br /><p style="color:green;">Your <i>BEST</i> travel route : </p><strong>' . $source . '</strong></div>'; ?>
  <?php
  }
  else {
    $path = dijkstra_path($source, $dest);

    $result['rendered_path'] = '<div><i style="background-color:orange;padding:5px;color:white;">Distance : ' . $path['distance'] . ' km</i></div><div><p>* Stations marked in <i style="color:red;">red</i> are Junctions.</p><p style="color:green;">Your <i>BEST</i> travel route :</p> <strong>' . rtrim($path['rendered_path'], '<td>></td>') . '</strong></div>';
    $result['raw_path'] = $path['raw_path'];
    $result['key'] = MAPKEY;
  }
  echo json_encode($result);
}
?>
