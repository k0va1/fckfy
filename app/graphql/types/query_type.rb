# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :tracks, [Types::TrackType], null: false, description: 'Returns a list of Tracks'

    def tracks
      Track.all
    end
  end
end
