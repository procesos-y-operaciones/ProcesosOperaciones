class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def step
    render json: User.select(:id, :name, :step).find(params[:user]).to_json
  end

  def cities
    render json: City.select(:id, :name).get_name_sorted.where(departament_id: params[:state]).to_json
  end

end
