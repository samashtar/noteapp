class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.integer :day_id
      t.integer :type_id
      t.timestamps
    end
  end
end
