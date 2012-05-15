class CreateSalesPeople < ActiveRecord::Migration
  def change
    create_table :sales_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone1
      t.integer :phone2

      t.timestamps
    end
    add_index :sales_people, :first_name
    add_index :sales_people, :last_name
    add_index :sales_people, :email
  end
end
