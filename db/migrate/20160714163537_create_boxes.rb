class CreateBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :boxes do |t|
      t.integer :length
      t.integer :width
      t.integer :height
      t.string :label
      t.boolean :sealed
      t.boolean :arrived

      t.timestamps
    end
  end
end
