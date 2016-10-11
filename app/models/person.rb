class Person < ApplicationRecord
    has_many  :events, -> { distinct }, through: :person_event
    has_and_belongs_to_many :punishments
end
