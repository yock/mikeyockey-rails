class PostsController < ApplicationController
  before_action :authenticate_user!
  def create
    User.create(post_params)
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
