$(document).ready(function(){

  $("#locationLoading").hide();

  $("#getLocation").click(function() {
    $("#locationLoading").show();
    navigator.geolocation.getCurrentPosition(geoSuccess);
  });

  function geoSuccess(location) {
    alert(location.coords.latitude  + ", " + location.coords.longitude);
    $.post('/', 
           {
             lat: location.coords.latitude, 
             lng: location.coords.longitude
           },
           function(response){
             console.log(response);
             $("#displayPosition").html("Success");
           });
    $("#locationLoading").hide();
  } 

});
