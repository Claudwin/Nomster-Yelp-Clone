class Place < ApplicationRecord
belongs_to :user
has_many :comments, dependent: :destroy
has_many :photos

geocoded_by :address
after_validation :geocode

validates :name, presence: true, length: { maximum: 140, minimum: 3 }
validates :address, presence: true
validates :description, presence: true
validates :phone_number, presence: true
validates :website, presence: true
validates :hours, presence: true
end
