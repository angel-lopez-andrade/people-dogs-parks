class Teeth < ApplicationRecord
  belongs_to :teethable, polymorphic: true
end
