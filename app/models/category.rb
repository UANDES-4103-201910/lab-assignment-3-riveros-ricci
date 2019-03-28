class Category < ApplicationRecord
  belongs_to :venue
  has_many :tickets
end
