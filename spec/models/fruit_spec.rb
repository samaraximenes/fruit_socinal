require 'rails_helper'

RSpec.describe Fruit, type: :model do
  let(:fruit) { create(:fruit) }


  context 'presence validations' do
    it { is_expected.to validate_presence_of(:name)
    .with_message(I18n.t('activerecord.errors.messages.blank')) }

    it { is_expected.to validate_presence_of(:carbohydrates)
    .with_message(I18n.t('activerecord.errors.messages.blank')) }

    it { is_expected.to validate_presence_of(:protein)
    .with_message(I18n.t('activerecord.errors.messages.blank')) }

    it { is_expected.to validate_presence_of(:fat)
    .with_message(I18n.t('activerecord.errors.messages.blank')) }
  end
end