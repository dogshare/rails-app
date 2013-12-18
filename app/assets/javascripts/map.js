$(function(){
  var owner_locations = $('#map').data('owner-locations');
  //var owner_locations = {};

  handler = Gmaps.build('Google', { markers: { maxRandomDistance: null } });
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(owner_locations);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });

});