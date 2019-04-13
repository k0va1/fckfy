# frozen_string_literal: true

module Authentication
  attr_reader :current_user

  private

  def authenticate_user
    payload       = ::JwtHelper.decode(token)
    @current_user = User.find(payload['user_id'])
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    nil
  end

  def token
    request.headers['Authorization']&.split&.last&.to_s
  end
end
