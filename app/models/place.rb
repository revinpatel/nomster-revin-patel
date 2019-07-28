class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  after_validation :geocode
  validates :description, presence: true
end
