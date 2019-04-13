# frozen_string_literal: true

require 'dry/monads'

class BaseOperation
  include Dry::Monads[:result, :do]

  attr_reader :model_class

  def initialize(model_class)
    @model_class = model_class
  end

  def call(**args)
  end
end
