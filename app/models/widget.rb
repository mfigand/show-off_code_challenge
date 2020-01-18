class Widget < ApplicationRecord
  validates :name, :description, :kind, :email, presence: true
end
