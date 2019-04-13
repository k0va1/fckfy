# frozen_string_literal: true

module Mutations
  module Users
    class SignUp < ::Mutations::BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true
      argument :username, String, required: true
      argument :first_name, String, required: true
      argument :last_name, String, required: true

      field :token, String, null: true
      field :user, Types::UserType, null: true

      def resolve(email:, password:, username:, first_name:, last_name:)
        validation_result = Domain::User::Contracts::SignUp.new.call(email: email, password: password, username: username, first_name: first_name, last_name: last_name)
        if validation_result.success?
          operation_result = Domain::User::Operations::SignUp.new(User).call(validation_result.to_h)
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


