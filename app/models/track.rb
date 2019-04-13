# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists
  include TrackUploader::Attachment(:track)

  before_create :set_duration

  def set_duration
    self.duration = 0
  end
end
