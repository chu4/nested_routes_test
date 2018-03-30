class PostsController < ApplicationController
  def index
    @posts = current_user.posts.all
    current_user
  end

  def show
    @post = current_user.posts.find(params[:id])
    current_user
  end
end
