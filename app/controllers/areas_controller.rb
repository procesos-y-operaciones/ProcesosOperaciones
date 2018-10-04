class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy, :structure]

  # GET /areas
  # GET /areas.json
  def index
    @search = Area.get_all_sorted.ransack(params[:q])
    @areas = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /areas/1
  # GET /areas/1.json
  def show
  end

  # GET /areas/new
  def new
    @area = Area.new
  end

  # GET /areas/1/edit
  def edit
  end

  # POST /areas
  # POST /areas.json
  def create
    @area = Area.new(area_params)

    respond_to do |format|
      if @area.save
        format.html { redirect_to areas_path, notice: t('activerecord.successful.messages.created', :model => @area.class.model_name.human) }
        format.json { render :show, status: :created, location: @area }
      else
        format.html { render :new }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas/1
  # PATCH/PUT /areas/1.json
  def update
    respond_to do |format|
      if @area.update(area_params)
        format.html { redirect_to areas_path, notice: t('activerecord.successful.messages.updated', :model => @area.class.model_name.human) }
        format.json { render :show, status: :ok, location: @area }
      else
        format.html { render :edit }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1
  # DELETE /areas/1.json
  def destroy
    @area.destroy
    respond_to do |format|
      format.html { redirect_to areas_url, notice: t('activerecord.successful.messages.deleted', :model => @area.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  def structure

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name'   )
    data_table.new_column('string', 'Manager')
    data_table.new_column('string', 'ToolTip')
    data_table.add_rows(
      Area.get_tree
    )
    opts   = { width: 5000, height: 240, allowHtml: true }
    @chart = GoogleVisualr::Interactive::OrgChart.new(data_table, opts)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "structure",
        layout: 'pdf',
        orientation: 'Landscape',
        javascript_delay: 5000,
        page_size: 'Letter'
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
      params.require(:area).permit(
        :code, :name, :area_id
      )
    end
end
