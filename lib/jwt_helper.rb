# frozen_string_literal: true

module JwtHelper
  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  class << self
    def encode(payload, expiration_time = 1.day.from_now)
      payload[:exp] = expiration_time.to_i
      JWT.encode(payload, SECRET_KEY)
    end

    def decode(token)
      decoded = JWT.decode(token, SECRET_KEY)[0]
      decoded.with_indifferent_access
    end
  end
end
