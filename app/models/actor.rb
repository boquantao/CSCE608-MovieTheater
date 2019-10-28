class Actor < ApplicationRecord
    has_and_belongs_to_many :movies, class_name: "Movie"
end
