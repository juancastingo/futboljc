class Person < ApplicationRecord
    has_many  :events, -> { distinct }, through: :person_event
    has_many :punishments, through: :person_punishments
    has_many :person_punishments
    has_many :person_event

end
