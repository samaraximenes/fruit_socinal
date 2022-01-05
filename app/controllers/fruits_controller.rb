class FruitsController < ApplicationController
  before_action :set_fruit, only: [:show, :update]
   
  if !Rails.env.test?
    include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: "admin", password: "admin"
  end

  # GET /fruits
  def index
    if params[:limit]
      @fruits =  Fruit.limit(params[:limit])
    else
      @fruits = Fruit.all
    end
    render json: @fruits
  end

  # GET /fruits/1
  def show
    render json: @fruit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fruit
      @fruit = Fruit.find_by!(name: params[:name])
    end

    # Only allow a list of trusted parameters through.
    def fruit_params
      params.require(:fruit).permit(:name, :carbohydrates, :protein, :fat)
    end
end
