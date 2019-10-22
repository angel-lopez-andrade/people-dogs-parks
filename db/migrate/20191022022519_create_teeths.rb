class CreateTeeths < ActiveRecord::Migration[5.2]
  def change
    create_table :teeths do |t|
      t.references :teethable, polymorphic: true
      t.integer :number

      t.timestamps
    end
  end
end
