class License < ActiveRecord::Base
  attr_accessible :amount, :client_id, :system_id
  
  belongs_to :client
  belongs_to :system
  
  def system_name
    self.system.name
  end
  
end
