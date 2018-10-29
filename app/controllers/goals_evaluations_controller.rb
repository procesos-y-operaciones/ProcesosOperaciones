class GoalsEvaluationsController < ApplicationController
  before_action :set_goals_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /goals_evaluations
  # GET /goals_evaluations.json
  def index
    @goals_evaluations = GoalsEvaluation.all
  end

  # GET /goals_evaluations/1
  # GET /goals_evaluations/1.json
  def show
  end

  # GET /goals_evaluations/new
  def new
    @goals_evaluation = GoalsEvaluation.new
  end

  # GET /goals_evaluations/1/edit
  def edit
  end

  # POST /goals_evaluations
  # POST /goals_evaluations.json
  def create
    @goals_evaluation = GoalsEvaluation.new(goals_evaluation_params)

    respond_to do |format|
      if @goals_evaluation.save
        format.html { redirect_to @goals_evaluation, notice: 'Goals evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @goals_evaluation }
      else
        format.html { render :new }
        format.json { render json: @goals_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals_evaluations/1
  # PATCH/PUT /goals_evaluations/1.json
  def update
    respond_to do |format|
      if @goals_evaluation.update(goals_evaluation_params)
        format.html { redirect_to @goals_evaluation, notice: 'Goals evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @goals_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @goals_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals_evaluations/1
  # DELETE /goals_evaluations/1.json
  def destroy
    @goals_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to goals_evaluations_url, notice: 'Goals evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goals_evaluation
      @goals_evaluation = GoalsEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goals_evaluation_params
      params.fetch(:goals_evaluation, {})
    end
end
