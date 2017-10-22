$(function(){
  $("form").submit(function(event){
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');

    var title = $(this).find('#song_title').val();


    $.ajax({
          method: method,
          url: action,
          data: { title: title }

        });
  });
});
