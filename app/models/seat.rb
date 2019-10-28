class Seat < ApplicationRecord
    self.per_page = 15
    belongs_to :show, class_name: 'Show'
end
