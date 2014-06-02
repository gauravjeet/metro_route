jQuery(document).ready(function() {
  jQuery('#map-iframe').hide();

  // Hide Loading bar.
  jQuery('#loading').hide();

  jQuery('#dijkstra').click(function() {
    var source = jQuery('#source :selected').text();
    var destination = jQuery('#destination :selected').text();

    // Call dijkstra Algo.
    jQuery.ajax({
      url: 'findpath.php',
      data: {source: source, destination: destination},
      type: 'post',
      success: function(response) {

        // Print the shortest path.
        jQuery('#path-canvas').html(jQuery.parseJSON(response).rendered_path);
        key = jQuery.parseJSON(response).key;

        // Plot this path on graph.
        jQuery.ajax({
          url: 'find_latlng.php',
          data: {raw_path: jQuery.parseJSON(response).raw_path},
          type: 'post',
          success: function(latlng_response) {
            var latlong = jQuery.parseJSON(latlng_response).latlongs;
            if (jQuery.parseJSON(response).rendered_path.length > 85) {

              // Replace spaces with + character.
              source = url_sanitize(source);
              destination = url_sanitize(destination);
              src = 'https://www.google.com/maps/embed/v1/directions?key=' + key + '&origin=' + source + '&destination=' + destination + '&avoid=tolls|highways&mode=transit&zoom=11';

              // Show Google map.
              jQuery('#map-iframe').show();
              jQuery('#map-iframe').attr('src', src);
            }
          }
        });
      }
    });
  });

  // Ajax events.
  jQuery(document).ajaxStart(function() {
    jQuery('#loading').show();
  });

  jQuery(document).ajaxComplete(function() {
    jQuery('#loading').hide();
  });
});

// Sanitize for URL aliasing.
function url_sanitize(input) {
  input = input.replace(/ /g, '+');
  input += '+metro+station,Delhi,India';
  return input;
}
