class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = '正常に投稿されました'
      redirect_to @post
    else
      flash.now[:danger] = '投稿できませんでした'
      render :new
    end
  end

  def destroy
  end
end

private

def post_params
params.require(:post).permit(:image, :title, :content)
end