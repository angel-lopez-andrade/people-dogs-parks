class CreateDogsParks < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs_parks do |t|
      t.references :dog, foreign_key: true
      t.references :park, foreign_key: true
      t.boolean :fountain

      t.timestamps
    end
  end
end
