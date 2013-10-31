var Handlers = {
  onNewCommentSuccess: function(e, response) {
    // e.target is our form
    e.target.reset()
    // response.html is our rendered partial
    $('.comments').append(response.html);
  },
  onNewCommentError: function(e, response, xhr, error) {
    // e.target is our form
    //e.target.reset()
    // response.html is our rendered partial
    $('#server-feedback').empty().append(error);
  }

};

$(document).ready(function() {

  // need to listen for ajax:success on the new comment form
  $('form#new_comment').on('ajax:success', Handlers.onNewCommentSuccess);
  $('form#new_comment').on('ajax:error', Handlers.onNewCommentError);

});
