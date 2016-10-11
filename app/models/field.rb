class Field < ApplicationRecord
  belongs_to :club
  has_many :events
end
