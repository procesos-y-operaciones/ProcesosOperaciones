class EvaluatedController < ApplicationController

  before_action :set_evaluation, only: [:index]

  def index
    case @evaluation.step
    when 1
      render "step1"
    when 2
      render "step2"
    when 3
      @goals = (Goal.get_global + current_user.area.goals).map { |i| [i.percent_name, i.id, {'data-percent': "#{i.percentaje}"} ] }
      @competencies = (Competency.get_global + current_user.area.competencies).map { |i| [i.percent_name, i.id, {'data-percent': "#{i.percentaje}"} ] }
      render "step3"
    when 4
      render "step4"
    else
      render "wait"
    end
  end

  private

    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

end
