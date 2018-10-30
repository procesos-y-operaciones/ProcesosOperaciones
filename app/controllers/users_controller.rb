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
      case @user.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.successful.messages.created', :model => @user.class.model_name.human)
      else
        redirect_to users_path, notice: t('activerecord.successful.messages.created', :model => @user.class.model_name.human)
      end
    else
      case @user.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.errors.messages.record_invalid', :errors => @user.errors)
      else
        render :new
      end
    end
  end

  def update
    if @user.update(user_params)
      case @user.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.successful.messages.updated', :model => @user.class.model_name.human)
      else
        redirect_to users_path, notice: t('activerecord.successful.messages.updated', :model => @user.class.model_name.human)
      end
    else
      case @user.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.errors.messages.record_invalid', :errors => @user.errors)
      else
        render :edit
      end
    end
  end

  def destroy
    @user.destroy
    case @user.resource
    when "1"
      redirect_to admin_users_path, notice: t('activerecord.successful.messages.deleted', :model => @user.class.model_name.human)
    else
      redirect_to users_url, notice: t('activerecord.successful.messages.deleted', :model => @user.class.model_name.human)
    end
  end

  def evaluation
    @evaluation = current_user.evaluation_role
  end

  def evaluator
  end

  def evaluate
    @evaluations = current_user.evaluations
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
        :password, :password_confirmation, :current_password, :evaluation_role, :age, :avatar,
        :user_id, :resource, evaluations_attributes: Evaluation.attribute_names.map(&:to_sym).push(:_destroy),
      )
    end

end
