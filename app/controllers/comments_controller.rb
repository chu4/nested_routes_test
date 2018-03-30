class CommentsController < ApplicationController
  def index
    @user = current_user
    @post = current_post
    @comments = @post.comments.all
  end

  def show
    @user = current_user
    @post = current_post
    @comment = @post.comments.find(params[:id])
  end

  def new
    @user = current_user
    @post = current_post
    @comment = Comment.new
  end

  def create
    @user = current_user
    @post = current_post
    @comment = @user.comments.build(comment_params)
    @comment.post = @post
    if @comment.save
      redirect_to user_post_comment_path(@user, @post, @comment)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
