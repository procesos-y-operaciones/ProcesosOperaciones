class EvaluationsGoalsController < ApplicationController
  before_action :set_evaluations_goal, only: [:show, :edit, :update, :destroy]

  # GET /evaluations_goals
  # GET /evaluations_goals.json
  def index
    @evaluations_goals = EvaluationsGoal.all
  end

  # GET /evaluations_goals/1
  # GET /evaluations_goals/1.json
  def show
  end

  # GET /evaluations_goals/new
  def new
    @evaluations_goal = EvaluationsGoal.new
  end

  # GET /evaluations_goals/1/edit
  def edit
  end

  # POST /evaluations_goals
  # POST /evaluations_goals.json
  def create
    @evaluations_goal = EvaluationsGoal.new(evaluations_goal_params)

    respond_to do |format|
      if @evaluations_goal.save
        format.html { redirect_to @evaluations_goal, notice: 'Evaluations goal was successfully created.' }
        format.json { render :show, status: :created, location: @evaluations_goal }
      else
        format.html { render :new }
        format.json { render json: @evaluations_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations_goals/1
  # PATCH/PUT /evaluations_goals/1.json
  def update
    respond_to do |format|
      if @evaluations_goal.update(evaluations_goal_params)
        format.html { redirect_to @evaluations_goal, notice: 'Evaluations goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluations_goal }
      else
        format.html { render :edit }
        format.json { render json: @evaluations_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations_goals/1
  # DELETE /evaluations_goals/1.json
  def destroy
    @evaluations_goal.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_goals_url, notice: 'Evaluations goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluations_goal
      @evaluations_goal = EvaluationsGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluations_goal_params
      params.fetch(:evaluations_goal, {})
    end
end
