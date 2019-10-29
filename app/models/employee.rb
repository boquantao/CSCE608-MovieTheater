class Employee < ApplicationRecord
    self.per_page = 15
    belongs_to :cinema, class_name: "Cinema"
end
