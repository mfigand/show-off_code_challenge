# frozen_string_literal: true

class Widget < ApplicationRecord
  validates :name, :description, :kind, :email, presence: true
end
