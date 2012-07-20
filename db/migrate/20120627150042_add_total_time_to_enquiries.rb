class AddTotalTimeToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :total_time, :time
  end
end
