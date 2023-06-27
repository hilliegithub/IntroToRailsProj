class Restaurant < ApplicationRecord

    has_many :chefs
    has_many :meals
end
