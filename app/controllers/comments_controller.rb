class CommentsController < ApplicationController

  def create
    comment = Comment.new(params[:comment])
    comment.restaurant_id = params[:restaurant_id]
    comment.user_id = 1
    # comment.user_id = session[:user_id]
    if comment.save
      comment_html = render_to_string partial: "comments/comment", layout: false, locals: { comment: comment }
      render json: { html: comment_html }.to_json
    else
      render json: { error: comment.errors.full_messages, status: :unprocessable_entity }
    end
  end
end
