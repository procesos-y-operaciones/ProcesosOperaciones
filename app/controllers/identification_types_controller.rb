class IdentificationTypesController < ApplicationController
  before_action :set_identification_type, only: [:show, :edit, :update, :destroy]

  # GET /identification_types
  # GET /identification_types.json
  def index
    @search = IdentificationType.get_all_sorted.ransack(params[:q])
    @identification_types = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /identification_types/1
  # GET /identification_types/1.json
  def show
  end

  # GET /identification_types/new
  def new
    @identification_type = IdentificationType.new
  end

  # GET /identification_types/1/edit
  def edit
  end

  # POST /identification_types
  # POST /identification_types.json
  def create
    @identification_type = IdentificationType.new(identification_type_params)

    respond_to do |format|
      if @identification_type.save
        format.html { redirect_to @identification_type, notice: t('activerecord.successful.messages.created', :model => @identification_type.class.model_name.human) }
        format.json { render :show, status: :created, location: @identification_type }
      else
        format.html { render :new }
        format.json { render json: @identification_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identification_types/1
  # PATCH/PUT /identification_types/1.json
  def update
    respond_to do |format|
      if @identification_type.update(identification_type_params)
        format.html { redirect_to @identification_type, notice: t('activerecord.successful.messages.created', :model => @identification_type.class.model_name.human) }
        format.json { render :show, status: :ok, location: @identification_type }
      else
        format.html { render :edit }
        format.json { render json: @identification_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identification_types/1
  # DELETE /identification_types/1.json
  def destroy
    @identification_type.destroy
    respond_to do |format|
      format.html { redirect_to identification_types_url, notice: t('activerecord.successful.messages.created', :model => @identification_type.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identification_type
      @identification_type = IdentificationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def identification_type_params
      params.require(:identification_type).permit(
        :code, :name
      )
    end
end
