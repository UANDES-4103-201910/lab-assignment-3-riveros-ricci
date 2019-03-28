class Venue < ApplicationRecord
  has_many :categories
  has_many :events
end
