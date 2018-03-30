class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts.all
  end

  def show
    @user = current_user
    @post = @user.posts.find(params[:id])
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.build(post_params)
    if @post.save
      redirect_to user_post_path(@user, @post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
