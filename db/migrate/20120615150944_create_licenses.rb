class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.integer :client_id, :null => false
      t.integer :system_id, :null => false
      t.integer :amount, :default => 0

      t.timestamps
    end
    add_index :licenses, :client_id
    add_index :licenses, :system_id    
  end
end
