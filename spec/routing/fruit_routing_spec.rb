require "rails_helper"

RSpec.describe FruitsController, type: :routing do
  describe "routing FruitsController" do
    it { is_expected.to route(:get, '/fruits').to(action: :index) }
    it { is_expected.to route(:get, '/fruits/Apple').to(action: :show, name: "Apple") }
  end
end