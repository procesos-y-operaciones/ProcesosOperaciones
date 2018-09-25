class DepartamentsController < ApplicationController
  before_action :set_departament, only: [:show, :edit, :update, :destroy]

  # GET /departaments
  # GET /departaments.json
  def index
    @search = Departament.get_name_sorted.ransack(params[:q])
    @departaments = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /departaments/1
  # GET /departaments/1.json
  def show
  end

  # GET /departaments/new
  def new
    @departament = Departament.new
  end

  # GET /departaments/1/edit
  def edit
  end

  # POST /departaments
  # POST /departaments.json
  def create
    @departament = Departament.new(departament_params)

    respond_to do |format|
      if @departament.save
        format.html { redirect_to @departament, notice: t('activerecord.successful.messages.created', :model => @departament.class.model_name.human) }
        format.json { render :show, status: :created, location: @departament }
      else
        format.html { render :new }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departaments/1
  # PATCH/PUT /departaments/1.json
  def update
    respond_to do |format|
      if @departament.update(departament_params)
        format.html { redirect_to @departament, notice: t('activerecord.successful.messages.updated', :model => @departament.class.model_name.human) }
        format.json { render :show, status: :ok, location: @departament }
      else
        format.html { render :edit }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departaments/1
  # DELETE /departaments/1.json
  def destroy
    @departament.destroy
    respond_to do |format|
      format.html { redirect_to departaments_url, notice: t('activerecord.successful.messages.deleted', :model => @departament.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departament
      @departament = Departament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departament_params
      params.require(:departament).permit(
        :code, :name
      )
    end
end
