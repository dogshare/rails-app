$(function() {
  $('#dp1').datepicker({format:"dd/mm/yyyy"});
  $('#dp2').datepicker({format:"dd/mm/yyyy"});

  //event listener then start and end date validation//

  // $('#dp5').datepicker()
  // .on('changeDate', function(ev){
  //   if (ev.date.valueOf() < startDate.valueOf()){
  //     ....
  //   }
  // });

});


$(function(){

  if (navigator.geolocation){
    navigator.geolocation.getCurrentPosition(function(position){
      geonames_url = "http://ws.geonames.org/findNearbyPostalCodesJSON?formatted=true&lat=" + position.coords.latitude + "&lng="+ position.coords.longitude;

      $.ajax({
        url: geonames_url,
        dataType: 'jsonp',
        success: function(json){

          $("#person_zip").attr("value", json.postalCodes[0].postalCode);
          $("#person_zip").show();
        }
      });

    }, function(error){$("#person_zip").show();});    
  } else {
    $("#person_zip").show();
  }



})