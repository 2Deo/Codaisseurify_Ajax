// $(function () {
//
//   var $songs = $('#all_songs');
//
//   $.ajax({
//     type: 'GET',
//     url: '/api/songs',
//     success: function(songs) {
//       $.each(song, function(i, song) {
//         $all_songs.append('<li>songs</li>');
//       });
//     }
//   });
// });



<!-- -->
  function deleteSong(artistId,songId) {
    $.ajax({
      type: "DELETE",
      url: "/artists" + artistId + "/songs/" + songId,
      contentType: "application/json",
      dataType: "json"
    })
    .done(function(data) {
      console.log();
      $('#'+songId+'').remove();
    });
  }
//
// //-- create song
  function createSong(songId) {
    $.ajax({
      type: "POST",
      url: "api/songs.json",
      data: json.stringify({
        song: newSong
      }),
      contentType: "application/json",
      dataType: 'json'
    })

    .done(function(data) {
      console.log(data);


  });
  }
