class PersonPunishment < ApplicationRecord
  belongs_to :person
  belongs_to :punishment
end
