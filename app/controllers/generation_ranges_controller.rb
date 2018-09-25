class GenerationRangesController < ApplicationController
  before_action :set_generation_range, only: [:show, :edit, :update, :destroy]

  # GET /generation_ranges
  # GET /generation_ranges.json
  def index
    @search = GenerationRange.get_all_sorted.ransack(params[:q])
    @generation_ranges = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /generation_ranges/1
  # GET /generation_ranges/1.json
  def show
  end

  # GET /generation_ranges/new
  def new
    @generation_range = GenerationRange.new
  end

  # GET /generation_ranges/1/edit
  def edit
  end

  # POST /generation_ranges
  # POST /generation_ranges.json
  def create
    @generation_range = GenerationRange.new(generation_range_params)

    respond_to do |format|
      if @generation_range.save
        format.html { redirect_to @generation_range, notice: t('activerecord.successful.messages.created', :model => @generation_range.class.model_name.human) }
        format.json { render :show, status: :created, location: @generation_range }
      else
        format.html { render :new }
        format.json { render json: @generation_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generation_ranges/1
  # PATCH/PUT /generation_ranges/1.json
  def update
    respond_to do |format|
      if @generation_range.update(generation_range_params)
        format.html { redirect_to @generation_range, notice: t('activerecord.successful.messages.updated', :model => @generation_range.class.model_name.human) }
        format.json { render :show, status: :ok, location: @generation_range }
      else
        format.html { render :edit }
        format.json { render json: @generation_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generation_ranges/1
  # DELETE /generation_ranges/1.json
  def destroy
    @generation_range.destroy
    respond_to do |format|
      format.html { redirect_to generation_ranges_url, notice: t('activerecord.successful.messages.deleted', :model => @generation_range.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation_range
      @generation_range = GenerationRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generation_range_params
      params.fetch(:generation_range).permit(
        :code, :name
      )
    end
end
