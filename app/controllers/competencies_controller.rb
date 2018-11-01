class CompetenciesController < ApplicationController
  before_action :set_competency, only: [:show, :edit, :update, :destroy]

  # GET /competencies
  # GET /competencies.json
  def index
    @search = Competency.get_all_sorted.ransack(params[:q])
    @competencies = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /competencies/1
  # GET /competencies/1.json
  def show
  end

  # GET /competencies/new
  def new
    @competency = Competency.new
  end

  # GET /competencies/1/edit
  def edit
  end

  # POST /competencies
  # POST /competencies.json
  def create
    @competency = Competency.new(competency_params)
    respond_to do |format|
      if @competency.save
        format.html { redirect_to competencies_path, notice: t('activerecord.successful.messages.created', :model => @competency.class.model_name.human) }
        format.json { render :show, status: :created, location: @competency }
      else
        format.html { render :new }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competencies/1
  # PATCH/PUT /competencies/1.json
  def update
    respond_to do |format|
      if @competency.update(competency_params)
        format.html { redirect_to competencies_path, notice: t('activerecord.successful.messages.updated', :model => @competency.class.model_name.human) }
        format.json { render :show, status: :ok, location: @competency }
      else
        format.html { render :edit }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competencies/1
  # DELETE /competencies/1.json
  def destroy
    @competency.destroy
    respond_to do |format|
      format.html { redirect_to competencies_path, notice: t('activerecord.successful.messages.deleted', :model => @competency.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency
      @competency = Competency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competency_params
      params.require(:competency).permit(
        :code, :comp_name, :percentaje, :goal_type_id, :area_id
      )
    end
end
