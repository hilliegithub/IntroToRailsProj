class Chef < ApplicationRecord
    validates :ChefName, presence: true
    validates :ChefAge, numericality: true

    paginates_per 30

    belongs_to :restaurant
end
