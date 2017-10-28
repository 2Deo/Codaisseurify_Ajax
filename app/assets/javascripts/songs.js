
function deleteSong(songId){

  $.ajax({
    type: "DELETE",
    url: "artist_id/" + "songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
    var item = document.getElementById(songId);
    item.parentNode.removeChild(item);
  });
}


$(document).on('click', "a#deleteAll", function(){

  $.each($("li"), function(){
  var id = $("#delete").attr('href');
  var songId = $(this).attr('id');

    $.ajax({
      type: "DELETE",
      url: id + "/songs/" + songId + ".json",
      contentType: "application/json",
      dataType: "json"})
      $(this).remove();

});

});
