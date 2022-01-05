require 'rails_helper'

RSpec.describe FruitsController, type: :controller do

    let(:valid_attributes) { build(:fruit, name: "Apple").attributes }
    let(:valid_fruit) { Fruit.create! valid_attributes }
    let!(:banana) { create(:fruit, name: "Banana").attributes }


    describe 'GET #index' do
        it 'returns a success response' do
        get :index
        expect(response).to have_http_status(200)
        end
    end

    describe 'GET #index with limit' do
        it 'returns a success response' do
            get :index, params: { limit: 2 }
            expect(assigns(:fruits).count) == 2
        end
    end

    describe 'GET #Show' do
        it 'returns a success response' do
            get :show, params: { name: "Banana"}
            expect(response).to have_http_status(200)    
        end
    end
end