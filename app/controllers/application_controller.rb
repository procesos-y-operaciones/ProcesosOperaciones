class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def step
    render json: Evaluation.select(:id, :step).find(params[:evaluation]).to_json
  end

  def cities
    render json: City.select(:id, :name).get_name_sorted.where(departament_id: params[:state]).to_json
  end

end
