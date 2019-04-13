# frozen_string_literal: true

module Mutations
  module Tracks
    class Create < ::Mutations::BaseMutation
      argument :name, String, required: true
      argument :track_data, GraphQL::Types::JSON, required: true

      type Types::TrackType

      def resolve(name:, track_data:)
        validation_result = Domain::Track::Contracts::Create.new.call(name: name, user_id: context[:current_user].id, track_data: track_data)
        if validation_result.success?
          Domain::Track::Operations::Create.new(Track).call(validation_result.to_h)
        end
      end
    end
  end
end

