require 'rails_helper'

RSpec.describe FruityviceService do

    describe '#get_fruit' do
        it { expect(FruityviceService.get_fruit("#{Faker::Food.fruits}")).to be_instance_of(Hash) }
    end

end
