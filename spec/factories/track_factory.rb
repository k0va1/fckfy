# frozen_string_literal: true

FactoryBot.define do
  factory :track do
    sequence(:name) { |i| "Blur#{i}" }
    duration { 300 }
    user
    after(:build) do |track|
      track.artists = [create(:artist)]
    end
    track { File.open(Rails.root.join "spec/fixtures/track.mp3") }
  end
end
