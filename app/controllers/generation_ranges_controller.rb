class GenerationRangesController < ApplicationController
  before_action :set_generation_range, only: [:show, :edit, :update, :destroy]

  # GET /generation_ranges
  # GET /generation_ranges.json
  def index
    @generation_ranges = GenerationRange.all
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
        format.html { redirect_to @generation_range, notice: 'Generation range was successfully created.' }
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
        format.html { redirect_to @generation_range, notice: 'Generation range was successfully updated.' }
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
      format.html { redirect_to generation_ranges_url, notice: 'Generation range was successfully destroyed.' }
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
      params.fetch(:generation_range, {})
    end
end
