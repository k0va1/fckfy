# frozen_string_literal: true

require_relative '../../../base_operation'

module Domain
  module Track
    module Operations
      class Create < BaseOperation
        def call(**args)
          model_class.create(**args)
        end
      end
    end
  end
end
