# frozen_string_literal: true

require 'rails_helper'
require 'domain/track/contracts/create'

RSpec.describe Domain::Track::Contracts::Create do
  subject { described_class.new.call(track) }

  describe 'name' do
    context 'without name' do
      let(:track) { {} }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:name]).to eq(['is missing'])
      end
    end

    context 'when name is nil' do
      let(:track) { { name: nil } }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:name]).to eq(['must be a string'])
      end
    end

    context 'when name is a string' do
      let(:track) { { name: 'Blur 2' } }

      it 'is expected to be valid' do
        expect(subject.errors.to_h[:name]).to be_nil
      end
    end
  end
end
