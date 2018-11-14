class ChargesCompetenciesController < ApplicationController
  before_action :set_charges_competency, only: [:show, :edit, :update, :destroy]

  # GET /charges_competencies
  # GET /charges_competencies.json
  def index
    @charges_competencies = ChargesCompetency.all
  end

  # GET /charges_competencies/1
  # GET /charges_competencies/1.json
  def show
  end

  # GET /charges_competencies/new
  def new
    @charges_competency = ChargesCompetency.new
  end

  # GET /charges_competencies/1/edit
  def edit
  end

  # POST /charges_competencies
  # POST /charges_competencies.json
  def create
    @charges_competency = ChargesCompetency.new(charges_competency_params)

    respond_to do |format|
      if @charges_competency.save
        format.html { redirect_to @charges_competency, notice: 'Charges competency was successfully created.' }
        format.json { render :show, status: :created, location: @charges_competency }
      else
        format.html { render :new }
        format.json { render json: @charges_competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charges_competencies/1
  # PATCH/PUT /charges_competencies/1.json
  def update
    respond_to do |format|
      if @charges_competency.update(charges_competency_params)
        format.html { redirect_to @charges_competency, notice: 'Charges competency was successfully updated.' }
        format.json { render :show, status: :ok, location: @charges_competency }
      else
        format.html { render :edit }
        format.json { render json: @charges_competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charges_competencies/1
  # DELETE /charges_competencies/1.json
  def destroy
    @charges_competency.destroy
    respond_to do |format|
      format.html { redirect_to charges_competencies_url, notice: 'Charges competency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charges_competency
      @charges_competency = ChargesCompetency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charges_competency_params
      params.fetch(:charges_competency, {})
    end
end
