class Event < ApplicationRecord
  has_one :field
  has_many :people, -> { distinct }, through: :person_event, dependent: :destroy
  has_many :person_event
end
