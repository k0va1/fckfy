# frozen_string_literal: true

require_relative '../../../base_contract'

module Domain
  module User
    module Operations
      class SignUp < ::BaseOperation
        def call(**args)
          user  = model_class.create(args)
          token = ::JwtHelper.encode(user_id: user.id)
          Success(user: user, token: token)
        end
      end
    end
  end
end
