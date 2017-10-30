
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



function createSong(title) {

  var newSong = { title: title };
  var id = $("#add-song").focus()

  $.ajax({
    type: "POST",
    url: id + "/songs" + ".json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })

  .done(function(data){
    console.log(data);

    var id = $("#add-song");

    var listItem = $("<li></li>");
    listItem.addClass("song-item");
    listItem.attr('id', data.id);
    listItem.html(data.title);

    var delBtn = $("<a></a>");
    delBtn.attr('href', '#');
    delBtn.attr('id', 'delete');
    delBtn.html("Delete");

    listItem.append(delBtn);

    $("#song-list").append(listItem);
  })

  .fail(function(error){
    console.log(error);

    error_message = error.responseJSON.title[0];

  });
}

function submitSong(event) {
  event.preventDefault();

  var title = $("#new-song").val();

  createSong(title);

  $("#new-song").val(null);
}

$("form").bind('submit', submitSong);
