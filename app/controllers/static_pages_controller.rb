class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@micropost = current_user.microposts.build 
  		@feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def tournament
    @image = Image.new
    @images = Image.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end
end
