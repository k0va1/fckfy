# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Track, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user).class_name('User') }
    it { is_expected.to have_and_belong_to_many(:albums).class_name('Album') }
    it { is_expected.to have_and_belong_to_many(:artists).class_name('Artist') }
  end
end
