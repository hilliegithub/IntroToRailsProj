class ApplicationController < ActionController::Base
    before_action :set_dropdown_options

    def set_dropdown_options
        @cuisines = Restaurant.pluck(:Cuisine).uniq
    end
end
