class Dog < ApplicationRecord
  belongs_to :person
  has_many :dogs_parks
  has_many :parks, through: :dogs_parks
  has_many :teeth, as: :teethable
end