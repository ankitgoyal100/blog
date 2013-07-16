class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @post  = current_user.posts.build
      @items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
