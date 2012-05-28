class RemoveNoticeMeFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :notice_me
      end

  def down
    add_column :clients, :notice_me, :integer
  end
end
