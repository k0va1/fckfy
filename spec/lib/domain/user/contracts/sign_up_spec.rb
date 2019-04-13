# frozen_string_literal: true

require 'rails_helper'
require 'domain/user/contracts/sign_up'

RSpec.describe Domain::User::Contracts::SignUp do
  subject { described_class.new.call(params) }

  describe 'email' do
    context 'without email' do
      let(:params) { {} }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:email]).to eq(['is missing'])
      end
    end

    context 'when email is nil' do
      let(:params) { { email: nil } }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:email]).to eq(['must be a string'])
      end
    end

    context 'when email is a string' do
      let(:params) { { email: 'al3xander.koval@gmail.com' } }

      it 'is expected to be valid' do
        expect(subject.errors.to_h[:email]).to be_nil
      end
    end

    context 'when email has invalid format' do
      let(:params) { { email: 'al3xander.koval' } }

      it 'is expected to be valid' do
        expect(subject.errors.to_h[:email]).to eq(['is in invalid format'])
      end
    end
  end

  describe 'password' do
    context 'without password' do
      let(:params) { {} }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:password]).to eq(['is missing'])
      end
    end

    context 'when password is nil' do
      let(:params) { { password: nil } }

      it 'is expected to have error' do
        expect(subject.errors.to_h[:password]).to eq(['must be a string'])
      end
    end

    context 'when password is a string' do
      let(:params) { { password: '123123123' } }

      it 'is expected to be valid' do
        expect(subject.errors.to_h[:password]).to be_nil
      end
    end
  end
end
