# frozen_string_literal: true

require_relative '../../base_contract'
module Trackk
  module Contracts
    class Create < ::BaseContract
      schema do
        required(:name).value(:string)
        required(:duration).value(:integer)
      end

      rule(:duration).validate(gteq?: 0)
    end
  end
end
