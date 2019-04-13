# frozen_string_literal: true

require_relative '../../../base_contract'

module Domain
  module User
    module Contracts
      class SignIn < ::BaseContract
        schema do
          required(:email).value(Types::Email)
          required(:password).value(:string)
        end
      end
    end
  end
end
