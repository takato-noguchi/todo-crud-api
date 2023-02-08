class V1::PostsController < ApplicationController
  def index 
    @posts = Post.all
    render json: @posts 
  end

  def create 
    post = Post.new(content: params[:post][:content])
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
  
end
