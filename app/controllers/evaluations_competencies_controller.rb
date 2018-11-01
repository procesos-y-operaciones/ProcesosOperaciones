class EvaluationsCompetenciesController < ApplicationController
  before_action :set_evaluations_competency, only: [:show, :edit, :update, :destroy]

  # GET /evaluations_competencies
  # GET /evaluations_competencies.json
  def index
    @evaluations_competencies = EvaluationsCompetency.all
  end

  # GET /evaluations_competencies/1
  # GET /evaluations_competencies/1.json
  def show
  end

  # GET /evaluations_competencies/new
  def new
    @evaluations_competency = EvaluationsCompetency.new
  end

  # GET /evaluations_competencies/1/edit
  def edit
  end

  # POST /evaluations_competencies
  # POST /evaluations_competencies.json
  def create
    @evaluations_competency = EvaluationsCompetency.new(evaluations_competency_params)

    respond_to do |format|
      if @evaluations_competency.save
        format.html { redirect_to @evaluations_competency, notice: 'Evaluations competency was successfully created.' }
        format.json { render :show, status: :created, location: @evaluations_competency }
      else
        format.html { render :new }
        format.json { render json: @evaluations_competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations_competencies/1
  # PATCH/PUT /evaluations_competencies/1.json
  def update
    respond_to do |format|
      if @evaluations_competency.update(evaluations_competency_params)
        format.html { redirect_to @evaluations_competency, notice: 'Evaluations competency was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluations_competency }
      else
        format.html { render :edit }
        format.json { render json: @evaluations_competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations_competencies/1
  # DELETE /evaluations_competencies/1.json
  def destroy
    @evaluations_competency.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_competencies_url, notice: 'Evaluations competency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluations_competency
      @evaluations_competency = EvaluationsCompetency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluations_competency_params
      params.fetch(:evaluations_competency, {})
    end
end
