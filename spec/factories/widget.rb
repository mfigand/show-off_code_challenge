# frozen_string_literal: true

FactoryBot.define do
  factory :widget do
    name { 'Widget 1' }
    description { 'A visible widget' }
    kind { 'visible' }
  end
end
