class PostsController < ApplicationController
  def create
    p "asdasdads cerate #{params}"
    post = Post.create(post_params)
    post.save!
    redirect_to root_path
  end

  def new
    p "asdasdads new #{params}"
    @post = Post.new
  end

  private

  def post_params
    p "asdjgsakhfgakshdfgkjasfgkjsgkffsdfs"
    p "current user #{current_user.id}"
    p "asdasdads #{params[:description]}"
    p "asdasdads #{params[:image]}"
    p "asdasdads124c #{params[:user_id]}"
    p "======================================"
    params.require(:post).permit(:description, :image, :user_id)
  end
end
