class Chef < ApplicationRecord
    validates :ChefName, presence: true
    validates :ChefAge, numericality: true

    belongs_to :restaurant
end
