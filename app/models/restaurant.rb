class Restaurant < ApplicationRecord
    validates :LocationLatitude, :LocationLongitude, presence: true
    validates :LocationLatitude, :LocationLongitude, numericality: true

    paginates_per 30

    has_many :chefs
    has_many :meals
end
