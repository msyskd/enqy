class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.integer :sort, :null => false 
      t.string :name, :null => false

      t.timestamps
    end
    add_index :systems, :sort
  end
end
