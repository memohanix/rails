class UrlsController < ApplicationController
  def new
    @url=Url.new
  end

  def show
    @url=Url.find(:all)
  end

  def create
    @urls = Url.new(params[:url])
    if @urls.save
      redirect_to :action => 'show'
    else
      render :action => 'new'
    end
  end

end
