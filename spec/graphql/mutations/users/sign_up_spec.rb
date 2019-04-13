# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::Users::SignUp, type: :request do
  subject { post '/graphql', params: { query: query } }

  let(:query) do
    <<~QUERY
      mutation {
        signupUser(
          username: "k0va1"
          email: "al3xander.koval@gmail.com"
          password: "123123123"
          firstName: "Alex"
          lastName: "Koval"
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

  it 'creates a new user' do
    expect do
      subject
    end.to change { User.count }.by(1)
  end


  it 'returns a user with token' do
    subject
    expect(JSON.parse(response.body)['data']['signupUser']).to have_key('token')
  end
end
