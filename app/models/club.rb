class Club < ApplicationRecord
  has_many :fields, -> { distinct }
end
