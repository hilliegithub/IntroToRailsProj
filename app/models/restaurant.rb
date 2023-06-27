class Restaurant < ApplicationRecord
    validates :LocationLatitude, :LocationLongitude, presence: true
    validates :LocationLatitude, :LocationLongitude, numericality: true

    has_many :chefs
    has_many :meals
end
