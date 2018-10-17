class GoalsUsersController < ApplicationController
  before_action :set_goals_user, only: [:show, :edit, :update, :destroy]

  # GET /goals_users
  # GET /goals_users.json
  def index
    @goals_users = GoalsUser.all
  end

  # GET /goals_users/1
  # GET /goals_users/1.json
  def show
  end

  # GET /goals_users/new
  def new
    @goals_user = GoalsUser.new
  end

  # GET /goals_users/1/edit
  def edit
  end

  # POST /goals_users
  # POST /goals_users.json
  def create
    @goals_user = GoalsUser.new(goals_user_params)

    respond_to do |format|
      if @goals_user.save
        format.html { redirect_to @goals_user, notice: 'Goals user was successfully created.' }
        format.json { render :show, status: :created, location: @goals_user }
      else
        format.html { render :new }
        format.json { render json: @goals_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals_users/1
  # PATCH/PUT /goals_users/1.json
  def update
    respond_to do |format|
      if @goals_user.update(goals_user_params)
        format.html { redirect_to @goals_user, notice: 'Goals user was successfully updated.' }
        format.json { render :show, status: :ok, location: @goals_user }
      else
        format.html { render :edit }
        format.json { render json: @goals_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals_users/1
  # DELETE /goals_users/1.json
  def destroy
    @goals_user.destroy
    respond_to do |format|
      format.html { redirect_to goals_users_url, notice: 'Goals user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goals_user
      @goals_user = GoalsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goals_user_params
      params.fetch(:goals_user, {})
    end
end
