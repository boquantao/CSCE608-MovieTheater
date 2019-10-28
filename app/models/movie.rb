class Movie < ApplicationRecord
    self.per_page = 15
    has_many :shows, class_name: "Show", foreign_key: "movie_id", dependent: :destroy
    has_many :cinemas, through: :shows
    has_and_belongs_to_many :actors, class_name: "Actor"
end
