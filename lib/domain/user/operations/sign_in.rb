# frozen_string_literal: true

require_relative '../../../base_contract'

module Domain
  module User
    module Operations
      class SignIn < ::BaseOperation
        def call(**args)
          # calculate duration
          user  = model_class.find_by!(email: args[:email]).try(:authenticate, args[:password])
          token = ::JwtHelper.encode(user_id: user.id)
          Success(user: user, token: token)
        end
      end
    end
  end
end
