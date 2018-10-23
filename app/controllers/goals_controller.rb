class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @search = Goal.get_all_sorted.ransack(params[:q])
    @goals = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)
    respond_to do |format|
      if @goal.save
        format.html { redirect_to goals_path, notice: t('activerecord.successful.messages.created', :model => @goal.class.model_name.human) }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to goals_path, notice: t('activerecord.successful.messages.updated', :model => @goal.class.model_name.human) }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_path, notice: t('activerecord.successful.messages.deleted', :model => @goal.class.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(
        :code, :goal_name, :phases_number, :general_ind, :specific_ind, :percentaje, :area_id,
        :resource, :period_id, :goal_type_id, phases_attributes: Phase.attribute_names.map(&:to_sym).push(:_destroy),
      )
    end
end
