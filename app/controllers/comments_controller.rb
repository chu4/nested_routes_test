class CommentsController < ApplicationController
  def index
    @comments = current_post.comments.all
    current_user
    current_post
  end

  def show
    @comment = current_post.comments.find(params[:id])
    current_user
    current_post
  end
end
