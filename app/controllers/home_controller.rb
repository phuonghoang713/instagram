class HomeController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    p "---------------------------------------------------"
    p (@posts.size)
    p "==============================================="
  end
end
