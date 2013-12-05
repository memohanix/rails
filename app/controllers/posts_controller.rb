class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action=>'index'
  end

  def list
    @posts = Post.find(:all)
  end

  def new
    @posts=Post.new
  end

  def create
    @posts = Post.new(params[:post])
    if @posts.save
      redirect_to :action => 'new'
    else
      render :action => 'new'
    end
  end
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @posts= Post.find(params[:id])

  end
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to :action => 'show', :id => @post
    else
      render :action => 'edit'
    end
  end
end