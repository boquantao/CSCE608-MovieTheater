class Show < ApplicationRecord
    self.per_page = 15
    belongs_to :cinema, class_name: "Cinema"
    belongs_to :movie, class_name: "Movie"
end
