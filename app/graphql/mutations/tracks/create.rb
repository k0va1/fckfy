# frozen_string_literal: true

module Mutations
  module Tracks
    class Create < ::Mutations::BaseMutation
      argument :name, String, required: true

      field :track, Types::TrackType, null: true

      def resolve(name:)
        track = Track.create(name: name, user: User.first)
        {
          track: track
        }
      end
    end
  end
end

