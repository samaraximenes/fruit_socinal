require "rails_helper"

RSpec.describe ServiceFruitsController, type: :routing do
  describe "routing FruitsController" do
    it { is_expected.to route(:get, '/service_fruits/Apple').to(action: :show, name: "Apple") }
  end
end