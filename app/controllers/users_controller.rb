class UsersController < ApplicationController
  before_action :set_user, only: [:edit]

  def index
    @search = User.get_all_sorted.ransack(params[:q])
    @users = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  def new
    @user = User.new
  end

  def edit
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

end
