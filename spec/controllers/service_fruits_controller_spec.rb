require 'rails_helper'

RSpec.describe ServiceFruitsController, type: :controller do

    let(:valid_attributes) { build(:fruit, name: "Apple").attributes }
    let(:valid_fruit) { Fruit.create! valid_attributes }
    let!(:banana) { create(:fruit, name: "Banana").attributes }


    describe 'GET #Show' do
        it 'returns a success response' do
            get :show, params: { name: "Apple" }
            expect(response).to have_http_status(201)    
        end
        it 'returns a failure response' do
            get :show, params: { name: "Banana"}
            expect(response).to have_http_status(422)    
        end
    end

end