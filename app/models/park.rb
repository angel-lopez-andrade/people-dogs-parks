class Park < ApplicationRecord
    has_many :dogs_parks
    has_many :dogs, through: :dogs_parks
end
