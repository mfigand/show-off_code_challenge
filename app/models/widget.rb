# frozen_string_literal: true

class Widget < ApplicationRecord
  validates :name, :description, :kind, presence: true
end
