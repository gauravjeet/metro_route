<?php
  error_reporting(E_ALL);
  ini_set('display_errors', '1');
  require_once('helpers.php');

  // Load all stations in the metro map.
  $all_stations = load_stations();
  asort($all_stations);
?>

<!DOCTYPE html>
<html>
  <head>
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/findpath.js"></script>
  </head>
  <body>
    <form style="margin-left: 50px; margin-top: 50px;">
      <table style="margin-left: 30%;">
      <tr>
        <td>Source : </td>
        <td style="margin-left: 25%;">
          <select id="source" style="margin-left: 50px;" />
            <option><?php echo '-------- Select Source --------'; ?></option>
          <?php
            foreach ($all_stations as $name) {
          ?>
            <option><?php echo $name; ?></option>
          <?php    
            }
          ?>
          </select>
        </td>
      </tr>
      <tr>
        <td>Destination : </td>
        <td style="margin-left: 25%;">
          <select id="destination" style="margin-left: 50px;" />
            <option><?php echo '----- Select Destination -----'; ?></option>
          <?php
            foreach ($all_stations as $name) {
          ?>
            <option><?php echo $name; ?></option>
          <?php
            }
          ?>
          </select>
        </td>
      </tr>
      <tr><td></td><td><input id="dijkstra" type="button" value="Search"></td></tr>
      </table>
    </form>
    <div style="background-color:yellow;text-align:center;margin-top:0px;font-weight:bold;margin-left:25%;margin-right:25%;" id="loading">Searching</div>
    <div id="path-canvas"></div>
    <iframe style="margin-left: 15%;" id="map-iframe" height=600px; width=75%;></iframe>
  </body>
  <footer style="font-size:11px;text-align:center;">
    Powered by GJ
  </footer>
</html>
