class V1::PostsController < ApplicationController
  def index 
    @posts = Post.all
    render json: @posts 
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: '作成に成功しました', status: 200
    else
      render json: '作成に失敗しました', status: 500
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  
    unless @post
      render json: @post, status: 500
    end
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
