class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find(params[:user_id])
  end

  def current_post
    Post.find(params[:post_id])
  end
end
