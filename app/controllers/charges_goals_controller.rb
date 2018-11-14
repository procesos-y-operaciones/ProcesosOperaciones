class ChargesGoalsController < ApplicationController
  before_action :set_charges_goal, only: [:show, :edit, :update, :destroy]

  # GET /charges_goals
  # GET /charges_goals.json
  def index
    @charges_goals = ChargesGoal.all
  end

  # GET /charges_goals/1
  # GET /charges_goals/1.json
  def show
  end

  # GET /charges_goals/new
  def new
    @charges_goal = ChargesGoal.new
  end

  # GET /charges_goals/1/edit
  def edit
  end

  # POST /charges_goals
  # POST /charges_goals.json
  def create
    @charges_goal = ChargesGoal.new(charges_goal_params)

    respond_to do |format|
      if @charges_goal.save
        format.html { redirect_to @charges_goal, notice: 'Charges goal was successfully created.' }
        format.json { render :show, status: :created, location: @charges_goal }
      else
        format.html { render :new }
        format.json { render json: @charges_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charges_goals/1
  # PATCH/PUT /charges_goals/1.json
  def update
    respond_to do |format|
      if @charges_goal.update(charges_goal_params)
        format.html { redirect_to @charges_goal, notice: 'Charges goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @charges_goal }
      else
        format.html { render :edit }
        format.json { render json: @charges_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charges_goals/1
  # DELETE /charges_goals/1.json
  def destroy
    @charges_goal.destroy
    respond_to do |format|
      format.html { redirect_to charges_goals_url, notice: 'Charges goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charges_goal
      @charges_goal = ChargesGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charges_goal_params
      params.fetch(:charges_goal, {})
    end
end
