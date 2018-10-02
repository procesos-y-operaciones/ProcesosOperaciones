class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @search = User.get_all_sorted.ransack(params[:q])
    @users = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @users.save
      redirect_to users_path, notice: t('activerecord.successful.messages.created', :model => @user.class.model_name.human)
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: t('activerecord.successful.messages.updated', :model => @user.class.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: t('activerecord.successful.messages.deleted', :model => @user.class.model_name.human)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(
        :document, :expedition_date, :expedition_place, :first_name, :second_name,
        :first_lastname, :second_lastname, :born_date, :personal_mail, :corporative_mail,
        :telephone, :celphone, :address, :terms, :identification_type_id, :departament_id,
        :city_id, :area_id, :charge_id, :genre_id, :generation_range_id, :role_id, :email,
        :password, :password_confirmation, :current_password
      )
    end

end