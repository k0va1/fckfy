# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user).class_name('User') }
    it { is_expected.to have_and_belong_to_many(:artists).class_name('Artist') }
    it { is_expected.to have_and_belong_to_many(:tracks).class_name('Track') }
  end
end
