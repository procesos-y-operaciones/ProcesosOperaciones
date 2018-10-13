class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :update_step, :destroy]

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
    if @user.save
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

  def update_step
    if @user.update(user_params)
      case @user.step
      when 1
        redirect_to accept_user_path, notice: 'Usuario rechazado'
      when 2
        redirect_to evaluate_user_path, notice: 'Jefe seleccionado correctamente'
      when 3
        redirect_to accept_user_path, notice: 'Usuario aceptado'
      else
        redirect_to root_path, notice: "TODO"
      end

    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: t('activerecord.successful.messages.deleted', :model => @user.class.model_name.human)
  end

  def evaluation
    @evaluation = current_user.evaluation_role
  end

  def evaluator
  end

  def evaluate
    @step = current_user.step
    @goals = current_user.goals
    @types = GoalType.get_name_sorted
  end

  def accept
    @users = current_user.get_evaluates
  end

  def import
    User.import(params[:file])
    redirect_to users_path, notice: "Datos importados"
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
        :password, :password_confirmation, :current_password, :evaluation_role, :step, :age,
        :user_id,
      )
    end

end
