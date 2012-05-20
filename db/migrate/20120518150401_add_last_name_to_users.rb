class AddLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string, :null => false
  end
end
