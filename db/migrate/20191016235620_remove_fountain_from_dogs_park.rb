class RemoveFountainFromDogsPark < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs_parks, :fountain, :boolean
  end
end
