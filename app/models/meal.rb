class Meal < ApplicationRecord
    validates :MealName, length: {minimum: 2}
    validates :MealName, presence: true

    belongs_to :restaurant
end
