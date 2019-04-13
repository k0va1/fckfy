# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_track, mutation: Mutations::Tracks::Create
    field :signup_user, mutation: Mutations::Users::SignUp
    field :signin_user, mutation: Mutations::Users::SignIn
  end
end
