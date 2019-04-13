# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "k0va1#{i}" }
  end
end

