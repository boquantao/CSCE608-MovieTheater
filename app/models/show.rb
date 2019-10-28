class Show < ApplicationRecord
    self.per_page = 15
    belongs_to :cinema, class_name: "Cinema"
    belongs_to :movie, class_name: "Movie"
    has_many :seats, class_name: "Seat"
end
