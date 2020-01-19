# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name { 'Doe' }
    password { 'password' }
    email { 'email@gmail.com' }
    image_url { 'image_url' }
  end
end
