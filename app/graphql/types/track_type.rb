# frozen_string_literal: true

module Types
  class TrackType < Types::BaseObject
    graphql_name 'Track'

    field :id, ID, null: false
    field :name, String, null: false
    field :duration, Integer, null: false
    field :track_url, String, null: false
  end
end
