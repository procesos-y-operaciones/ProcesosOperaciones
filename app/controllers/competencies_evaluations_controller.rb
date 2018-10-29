class CompetenciesEvaluationsController < ApplicationController
  before_action :set_competencies_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /competencies_evaluations
  # GET /competencies_evaluations.json
  def index
    @competencies_evaluations = CompetenciesEvaluation.all
  end

  # GET /competencies_evaluations/1
  # GET /competencies_evaluations/1.json
  def show
  end

  # GET /competencies_evaluations/new
  def new
    @competencies_evaluation = CompetenciesEvaluation.new
  end

  # GET /competencies_evaluations/1/edit
  def edit
  end

  # POST /competencies_evaluations
  # POST /competencies_evaluations.json
  def create
    @competencies_evaluation = CompetenciesEvaluation.new(competencies_evaluation_params)

    respond_to do |format|
      if @competencies_evaluation.save
        format.html { redirect_to @competencies_evaluation, notice: 'Competencies evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @competencies_evaluation }
      else
        format.html { render :new }
        format.json { render json: @competencies_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competencies_evaluations/1
  # PATCH/PUT /competencies_evaluations/1.json
  def update
    respond_to do |format|
      if @competencies_evaluation.update(competencies_evaluation_params)
        format.html { redirect_to @competencies_evaluation, notice: 'Competencies evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @competencies_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @competencies_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competencies_evaluations/1
  # DELETE /competencies_evaluations/1.json
  def destroy
    @competencies_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to competencies_evaluations_url, notice: 'Competencies evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competencies_evaluation
      @competencies_evaluation = CompetenciesEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competencies_evaluation_params
      params.fetch(:competencies_evaluation, {})
    end
end
