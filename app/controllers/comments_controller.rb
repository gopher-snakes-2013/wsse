class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.restaurant_id = params[:restaurant_id]

    if @comment.save
      render :json => {:comment_template => render_to_string(:partial => "partials/comment_content", locals: { :comment => @comment})}
    else
      render :json => @comment.errors.full_messages.join(', '),  :status => :unprocessable_entity
    end
  end
end
