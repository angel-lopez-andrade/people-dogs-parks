class Person < ApplicationRecord
    has_many :dogs
    has_many :teeth, as: :teethable
    enum gender: {"male": 1, "female": 2}
end