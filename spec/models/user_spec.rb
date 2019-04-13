# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:tracks).class_name('Track') }
    it { is_expected.to have_many(:albums).class_name('Album') }
  end
end
