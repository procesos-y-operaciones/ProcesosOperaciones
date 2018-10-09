class HomeController < ApplicationController
  
  before_action :verify_terms, only: [:index]

  def index
    case current_user.role_id
    when 1
      render :admin
    when 2
      render :user
    else
      render :default
    end
  end
  
  private
  
    def verify_terms
      if current_user.role_id == 2 && !current_user.terms
        render :terms
      end
    end

end
