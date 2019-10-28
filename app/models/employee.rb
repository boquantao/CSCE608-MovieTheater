class Employee < ApplicationRecord
    belongs_to :cinema, class_name: "Cinema"
end
