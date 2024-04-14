# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    customer
    event_type
    start { Faker::Time.between(from: DateTime.now, to: DateTime.now + 10) }
    finish { start + 1.hour }
  end
end
