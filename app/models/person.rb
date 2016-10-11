class Person < ApplicationRecord
    has_many  :events, -> { distinct }, through: :person_event
end
