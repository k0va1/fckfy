# frozen_string_literal: true

require_relative '../../../base_contract'

module Domain
  module User
    module Contracts
      class SignUp < ::BaseContract
        schema do
          required(:email).value(Types::Email)
          required(:password).value(:string)
          required(:username).value(:string)
          required(:first_name).value(:string)
          required(:last_name).value(:string)
        end
      end
    end
  end
end
