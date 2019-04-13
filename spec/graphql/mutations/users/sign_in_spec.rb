# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::Users::SignIn, type: :request do
  let!(:user) { create(:user, email: 'al3xander.koval@gmail.com', password: '123123123') }

  subject { post '/graphql', params: { query: query } }

  let(:query) do
    <<~QUERY
      mutation {
        signinUser(
          email: "al3xander.koval@gmail.com"
          password: "123123123"
        ) {
          user {
            id
            username
            email
          }
          token
        }
      }
    QUERY
  end

  it 'returns a user with token' do
    subject
    expect(JSON.parse(response.body)['data']['signinUser']).to have_key('token')
  end
end
