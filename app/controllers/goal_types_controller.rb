class GoalTypesController < ApplicationController
  before_action :set_goal_type, only: [:show, :edit, :update, :destroy]

  # GET /goal_types
  # GET /goal_types.json
  def index
    @search = GoalType.get_all_sorted.ransack(params[:q])
    @goal_types = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /goal_types/1
  # GET /goal_types/1.json
  def show
  end

  # GET /goal_types/new
  def new
    @goal_type = GoalType.new
  end

  # GET /goal_types/1/edit
  def edit
  end

  # POST /goal_types
  # POST /goal_types.json
  def create
    @goal_type = GoalType.new(goal_type_params)

    respond_to do |format|
      if @goal_type.save
        format.html { redirect_to @goal_type, notice: t('activerecord.successful.messages.created', :model => @goal_type.class.model_name.human) }
        format.json { render :show, status: :created, location: @goal_type }
      else
        format.html { render :new }
        format.json { render json: @goal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_types/1
  # PATCH/PUT /goal_types/1.json
  def update
    respond_to do |format|
      if @goal_type.update(goal_type_params)
        format.html { redirect_to @goal_type, notice: t('activerecord.successful.messages.updated', :model => @goal_type.class.model_name.human) }
        format.json { render :show, status: :ok, location: @goal_type }
      else
        format.html { render :edit }
        format.json { render json: @goal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_types/1
  # DELETE /goal_types/1.json
  def destroy
    @goal_type.destroy
    respond_to do |format|
      format.html { redirect_to goal_types_url, notice: t('activerecord.successful.messages.deleted', :model => @goal_type.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_type
      @goal_type = GoalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_type_params
      params.require(:goal_type).permit(
        :code, :name, :evaluation
      )
    end
end
