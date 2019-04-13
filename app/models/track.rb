# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists

  # include TrackUploader[:track]
end
