class Cinema < ApplicationRecord
    self.per_page = 15
    has_many :shows, class_name: "Show", foreign_key: "cinema_id", dependent: :destroy
    has_many :movies, through: :shows
    has_many :employees, class_name: "Employee", foreign_key: "cinema_id", dependent: :nullify
end
