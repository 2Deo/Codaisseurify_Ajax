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
    type: "DELETE",
    url: "/song/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
    updateCounters();
  });
}
