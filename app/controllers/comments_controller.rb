class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.restaurant_id = params[:restaurant_id]
    @comment.save

    redirect_to restaurant_path(@comment.restaurant_id)
  end

  def vote_up
    @comment = Comment.find(params[:id])
    @user = User.new
    @user.vote_for(@comment)
    redirect_to restaurant_path(@comment.restaurant_id)
  end
end
