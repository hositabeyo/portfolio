class ToppagesController < ApplicationController
  def index
    @post = Post.last
  end
end
