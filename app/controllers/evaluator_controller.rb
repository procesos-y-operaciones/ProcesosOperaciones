class EvaluatorController < ApplicationController

  def accept
    @evaluations = current_user.get_evaluates_accept
  end

  def approve
    @evaluations = current_user.get_evaluates_approve
  end

  def trace
    @evaluations = current_user.get_evaluates_trace
  end

  def show
    @evaluation = Evaluation.find(params[:id])
  end

end
