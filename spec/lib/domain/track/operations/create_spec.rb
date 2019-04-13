# frozen_string_literal: true

require 'rails_helper'
require 'domain/track/operations/create'

RSpec.describe Domain::Track::Operations::Create do
  let(:model_class) { class_double('Track', create: Track.new) }
  let(:user) { create(:user) }
  let(:params) { { name: 'Blur 2', user_id: user.id } }

  subject { described_class.new(model_class).call(params) }

  it 'creates the record' do
    is_expected.to be_instance_of(Track)
  end

  context 'with real data' do
    let(:model_class) { Track }

    it 'creates the record' do
      is_expected.to be_instance_of(Track)
    end
  end
end
