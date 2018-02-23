class UsersController < ApplicationController
  def index
    @post = Post.new  # form_for 用
  end
end
