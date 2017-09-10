class LatestController < ApplicationController
  def index
    @post = Post.last
  end
end
