# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tracks
  has_and_belongs_to_many :artists
end
