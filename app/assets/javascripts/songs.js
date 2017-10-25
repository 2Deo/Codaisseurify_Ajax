// $(function(){
//   $("form").submit(function(event){
//     event.preventDefault();
//
//     $.ajax({
//       method: 'DESTROY',
//       url: action,
//       data: { title: title }
//       dataType: 'script'
//
//     }).done(function(data){
//
//     }).fail()
//
//     ;
//   });
// });

function deleteSong(songId) {
  $.ajax({
    type: "DESTROY",
    url: "api/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"


  })
  .done(function(data) {
    $('li[data-id="'+songId+'"]').remove();

    updateCounters();
  });
}
