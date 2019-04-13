# frozen_string_literal: true

require 'dry-validation'

class BaseContract < Dry::Validation::Contract
  config.messages.load_paths << Rails.root.join('config', 'locales', 'errors.yml')
end
