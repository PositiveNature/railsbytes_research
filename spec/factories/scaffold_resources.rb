# frozen_string_literal: true

FactoryBot.define do
  factory :scaffold_resource do
    name { "Name #{SecureRandom.uuid}" }
    description { "Description #{SecureRandom.uuid}" }
  end
end
