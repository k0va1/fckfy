# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "k0va1#{i}" }
    sequence(:email) { |i| "al3xander.koval#{i}@gmail.com" }
    password { "123123123" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end

