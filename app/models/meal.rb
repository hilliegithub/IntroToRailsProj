class Meal < ApplicationRecord
    validates :MealName, length: {minimum: 2}
    validates :MealName, presence: true

    paginates_per 30

    belongs_to :restaurant
end
