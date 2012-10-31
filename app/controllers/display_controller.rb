class DisplayController < ApplicationController  
  skip_before_filter :authorize
  before_filter :confirm_admin, :only => [:user, :deals]
  
  def show
    if(session[:admin] != true)
  	  @places = Place.verified(true)
    else
      @places = Place.hidden(false)
    end
    
  	respond_to do |format|
  		format.html
      format.js 
    end
  end

  def search
  end

  def user
    @users = User.all
    @users = @users
    respond_to do |format|
      format.html
      format.js
    end
  end

  def deals
    @deals = Deal.all
    @deals = @deals

    respond_to do |format|
      format.html
      format.js
    end
  end
end
