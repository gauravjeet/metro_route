function initialize() {

  // Latitude and longitude for New Delhi.
  var latlong = new google.maps.LatLng(28.6100, 77.2300);

  // Create a map object.
  var mapOptions = {
    center: latlong,
    zoom: 11,
    mapTypeId: google.maps.MapTypeId.roadmap
  };

  // Display map.
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  // To add the marker to the map.
  var marker = new google.maps.Marker({
    position: latlong,
    title: "Metro station",
    animation: google.maps.Animation.DROP,
    icon: 'img/icon.png'
  });
  marker.setMap(map);

  // Marker toggle bounce.
  google.maps.event.addListener(marker, 'click', function () {
    if (marker.getAnimation() != null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
  });

  // Create an info window.
   var infowindow = new google.maps.InfoWindow({
      content: 'This is a test info window'
  });

  // Add info window to the map.
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map, marker);
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
