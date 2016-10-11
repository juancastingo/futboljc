class Punishment < ApplicationRecord
  has_many :people, through: :person_punishments
  has_many :person_punishments
end
