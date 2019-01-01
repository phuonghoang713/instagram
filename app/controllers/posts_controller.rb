class PostsController < ApplicationController
  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def new
    @post = Post.new
    # @current_user = User.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:description, :images, :user_id)
  end
end
