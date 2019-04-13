# frozen_string_literal: true

module Mutations
  module Users
    class SignIn < ::Mutations::BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true

      field :token, String, null: true
      field :user, Types::UserType, null: true

      def resolve(email:, password:)
        validation_result = Domain::User::Contracts::SignIn.new.call(email: email, password: password)
        if validation_result.success?
          operation_result = Domain::User::Operations::SignIn.new(User).call(validation_result.to_h)
          if operation_result.success?
            {
              token: operation_result.value![:token],
              user:  operation_result.value![:user]
            }
          end
        end
      end
    end
  end
end


