# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    graphql_name 'User'

    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
  end
end

