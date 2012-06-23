class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.integer :client_id, :null => false
      t.integer :user_id, :null => false
      t.integer :system_id, :null => false
      t.datetime :start, :null => false
      t.datetime :end
      t.boolean :closed, :null => false, :default => false
      t.float :time
      t.text :question, :null => false
      t.text :answer

      t.timestamps
    end
    add_index :enquiries, :client_id
    add_index :enquiries, :user_id
    add_index :enquiries, :system_id
    add_index :enquiries, :closed
  end
end
