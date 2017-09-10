class ArchiveController < ApplicationController
  def index
    @posts = Post.all
  end
end
