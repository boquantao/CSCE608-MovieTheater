class Actor < ApplicationRecord
    self.per_page = 15
    has_and_belongs_to_many :movies, class_name: "Movie"
end
