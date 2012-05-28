class AddNoticeMeToUser < ActiveRecord::Migration
  def change
    add_column :users, :notice_me, :integer, :default => 30
  end
end
