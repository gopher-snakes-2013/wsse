CommentForm = {

  init: function(){
    $('form#new_comment').on("submit", this.save)
  },

  save: function(e){
    e.preventDefault()
    var $commentForm = $(this)
    $.ajax({
      url: $commentForm.prop("action"),
      method: $commentForm.prop("method"),
      data: $commentForm.serialize()
    }).done(function(comment){
      CommentForm.appendComment(comment)
    }).error(function(xhr){
      CommentForm.appendError(xhr)
    })
  },

  appendComment: function(comment){
    $('ul.comments').append(comment.comment_template)
  },

  appendError: function(xhr){
    $('ul.comments').before(xhr.responseText)
  }



}

$(document).ready(function(){
  CommentForm.init()
})