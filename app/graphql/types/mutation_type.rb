# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :createTrack, mutation: Mutations::Tracks::Create
  end
end
