class PostsController < ApplicationController
  def index
    @posts =  Post.order(created_at: :desc).page(params[:page]).per(12)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @posts = Post.all
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
    @post = Post.find(params[:id])
    @post.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to edit_url
  end
end

private

def post_params
params.require(:post).permit(:image, :title, :content)
end