class AddLastNoticeToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_notice, :integer, :null => false, :default => "200001"
  end
end
