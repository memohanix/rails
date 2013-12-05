class PostController < ApplicationController
  def index
     $post=Post.all;
  end
 

  def list
  end

  def show
  end

  def new
    @posts=Post.new
  end

  def create
    @post = Post.new(params[:url])
    if @post.save
      redirect_to :action => 'show'
    else
      render :action => 'new'
    end
  end

  def delete
  end

  def update
  end
end
