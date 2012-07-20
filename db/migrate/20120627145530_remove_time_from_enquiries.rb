class RemoveTimeFromEnquiries < ActiveRecord::Migration
  def up
    remove_column :enquiries, :time
      end

  def down
    add_column :enquiries, :time, :float
  end
end
