# frozen_string_literal: true

FactoryBot.define do
  factory :track do
    sequence(:name) { |i| "Blur#{i}" }
    duration { 300 }
    user
    after(:build) do |track|
      track.artists = [create(:artist)]
    end
  end
end
