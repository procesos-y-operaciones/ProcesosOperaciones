class HomeController < ApplicationController

  def index
    case current_user.role
    when 1
      render :admin
    when 2
      render :user
    else
      render :default
    end
  end

end
