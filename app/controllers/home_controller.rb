class HomeController < ApplicationController

  def index
    case current_user.roles_id
    when 1
      render :admin
    when 2
      if current_user.terms
        render :user
      else
        render :terms
      end
    else
      render :default
    end
  end

end
