$(function(){
  var owner_locations = $('#map').data('owner-locations');
  //var owner_locations = {};

  handler = Gmaps.build('Google', { markers: { maxRandomDistance: null } });
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(owner_locations);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });

  $("#map-toggle").click(function() {
    $("#map").slideToggle("slow", function() {
    //   var center = Gmaps.map.map.getCenter();
    //   google.maps.event.trigger(map, 'resize');
    //   Gmaps.map.map.setCenter(center);    
    });
  });

});