class CommentsController < ApplicationController
  def index
    @post = current_post
    @comments = @post.comments.all
  end

  def show
    @post = current_post
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = current_post
    @comment = Comment.new
  end

  def create
    @post = current_post
    @comment = @post.comments.build(comment_params)
    @comment.user = @post.user
    if @comment.save
      redirect_to post_comment_path(@post, @comment)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
