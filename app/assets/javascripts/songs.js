$(function(){
  $("form").submit(function(event){
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');

    var description = $(this).find('#song_description').val();
    var priority = $(this).find('#song_priority').val();

    $.ajax({
          method: method,
          url: action,
          data: { description: description, priority: priority }

        });
  });
});
