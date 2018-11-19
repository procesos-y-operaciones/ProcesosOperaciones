class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @search = Evaluation.get_all_sorted.ransack(params[:q])
    @evaluations = @search.result.paginate(:page => params[:page], :per_page => 10)
    @page = params[:page] || 1
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    @goals = (Goal.get_global + current_user.area.goals).map { |i| [i.percent_name, i.id, {'data-percent': "#{i.percentaje}"} ] }
    @competencies = (Competency.get_global + current_user.area.competencies).map { |i| [i.percent_name, i.id, {'data-percent': "#{i.percentaje}"} ] }
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1/edit
  def edit
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)
    if @evaluation.save
      case @evaluation.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.successful.messages.created', :model => @evaluation.class.model_name.human)
      when "2"
        redirect_to evaluated_index_path(@evaluation), notice: t('activerecord.successful.messages.created', :model => @evaluation.class.model_name.human)
      else
        redirect_to evaluations_path, notice: t('activerecord.successful.messages.created', :model => @evaluation.class.model_name.human)
      end
    else
      case @evaluation.resource
      when "1"
        redirect_to admin_users_path, error: "No se pudo crear la evaluación"
      when "2"
        redirect_to evaluated_index_path(@evaluation), error: "No se pudo crear la evaluación"
      else
        render :new
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    if @evaluation.update(evaluation_params)
      case @evaluation.resource
      when "1"
        redirect_to admin_users_path, notice: t('activerecord.successful.messages.updated', :model => @evaluation.class.model_name.human)
      when "2"
        redirect_to evaluated_index_path(@evaluation), notice: t('activerecord.successful.messages.updated', :model => @evaluation.class.model_name.human)
      when "3"
        redirect_to evaluator_accept_path, notice: t('activerecord.successful.messages.updated', :model => @evaluation.class.model_name.human)
      when "4"
        redirect_to evaluator_approve_path, notice: t('activerecord.successful.messages.updated', :model => @evaluation.class.model_name.human)
      else
        redirect_to evaluations_path, notice: t('activerecord.successful.messages.updated', :model => @evaluation.class.model_name.human)
      end
    else
      case @evaluation.resource
      when "1"
        redirect_to admin_users_path, error: "No se pudo actualizar la evaluación"
      when "2"
        redirect_to evaluated_index_path(@evaluation), error: "No se pudo actualizar la evaluación"
      when "3"
        redirect_to evaluator_accept_path, error: "No se pudo actualizar la evaluación"
      when "4"
        redirect_to evaluator_approve_path, error: "No se pudo actualizar la evaluación"
      else
        render :new
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    redirect_to evaluations_path, notice: t('activerecord.successful.messages.deleted', :model => @evaluation.class.model_name.human)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(
        :boss_id, :step, :comment, :final_score, :resource, :user_id, :period_id,
        evaluations_goals_attributes: EvaluationsGoal.attribute_names.map(&:to_sym).push(:_destroy),
        evaluations_competencies_attributes: EvaluationsCompetency.attribute_names.map(&:to_sym).push(:_destroy),
      )
    end
end
