$(function(){
  var owner_locations = $('#map').data('owner-locations');

  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(owner_locations);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });

});