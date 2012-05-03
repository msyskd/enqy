class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :null => false 
      t.integer :user_id, :null => false
      t.integer :sales_person_id, :null => false
      t.boolean :renewal_month1, :null => false, :default => false 
      t.boolean :renewal_month2, :null => false, :default => false
      t.boolean :renewal_month3, :null => false, :default => false
      t.boolean :renewal_month4, :null => false, :default => false
      t.boolean :renewal_month5, :null => false, :default => false
      t.boolean :renewal_month6, :null => false, :default => false
      t.boolean :renewal_month7, :null => false, :default => false
      t.boolean :renewal_month8, :null => false, :default => false
      t.boolean :renewal_month9, :null => false, :default => false
      t.boolean :renewal_month10, :null => false, :default => false
      t.boolean :renewal_month11, :null => false, :default => false
      t.boolean :renewal_month12, :null => false, :default => false
      t.integer :notice_me, :null => false, :default => 30
      t.boolean :usable, :null => false, :default => true

      t.timestamps
    end
    add_index :clients, :name
  end
end
