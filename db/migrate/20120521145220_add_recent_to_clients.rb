class AddRecentToClients < ActiveRecord::Migration
  def change
    add_column :clients, :recent, :integer, :null => false, :default => 190001 
  end
end
