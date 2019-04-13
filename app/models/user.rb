# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tracks
  has_many :albums
end
