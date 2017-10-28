
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
