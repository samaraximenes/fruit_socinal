class ServiceFruitsController < ApplicationController

    if !Rails.env.test?
    include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: "admin", password: "admin"
    end

    def show
        @fruit = FruityviceService.get_fruit(params[:name]).to_h.symbolize_keys
        build_fruit
        @fruit = Fruit.new(@fruit)
        if @fruit.save
            render json: @fruit,:except => [:id], status: :created, location: @fruit
        else
            render json: @fruit.errors, status: :unprocessable_entity
        end
    end

    private

    def build_fruit
        @fruit = @fruit.except(:genus, :id, :family, :order, :nutritions)
                       .merge(@fruit[:nutritions].symbolize_keys.except(:calories, :sugar))
    end
end