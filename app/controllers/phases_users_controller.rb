class PhasesUsersController < ApplicationController
  before_action :set_phases_user, only: [:show, :edit, :update, :destroy]

  # GET /phases_users
  # GET /phases_users.json
  def index
    @phases_users = PhasesUser.all
  end

  # GET /phases_users/1
  # GET /phases_users/1.json
  def show
  end

  # GET /phases_users/new
  def new
    @phases_user = PhasesUser.new
  end

  # GET /phases_users/1/edit
  def edit
  end

  # POST /phases_users
  # POST /phases_users.json
  def create
    @phases_user = PhasesUser.new(phases_user_params)

    respond_to do |format|
      if @phases_user.save
        format.html { redirect_to @phases_user, notice: 'Phases user was successfully created.' }
        format.json { render :show, status: :created, location: @phases_user }
      else
        format.html { render :new }
        format.json { render json: @phases_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phases_users/1
  # PATCH/PUT /phases_users/1.json
  def update
    respond_to do |format|
      if @phases_user.update(phases_user_params)
        format.html { redirect_to @phases_user, notice: 'Phases user was successfully updated.' }
        format.json { render :show, status: :ok, location: @phases_user }
      else
        format.html { render :edit }
        format.json { render json: @phases_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phases_users/1
  # DELETE /phases_users/1.json
  def destroy
    @phases_user.destroy
    respond_to do |format|
      format.html { redirect_to phases_users_url, notice: 'Phases user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phases_user
      @phases_user = PhasesUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phases_user_params
      params.fetch(:phases_user, {})
    end
end
