class EvaluatorController < ApplicationController

  def accept
    @evaluations = current_user.get_evaluates_accept
  end

  def approve
    @evaluations = current_user.get_evaluates_approve
  end

end
