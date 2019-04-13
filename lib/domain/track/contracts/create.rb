# frozen_string_literal: true

require_relative '../../../base_contract'

module Domain
  module Track
    module Contracts
      class Create < ::BaseContract
        params do
          required(:name).value(:string)

          required(:track_data).hash do
            required(:id).value(:string)
            required(:storage).value(:string)
            required(:metadata).hash do
              required(:filename).value(:string)
              required(:size).value(:integer)
              required(:mime_type).value(:string)
            end
          end
          required(:track_data).value(:string)
          required(:user_id).value(:integer)
        end
      end
    end
  end
end
