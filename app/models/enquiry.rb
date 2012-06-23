class Enquiry < ActiveRecord::Base
  attr_accessible :answer, :client_id, :closed, :end, :question, :start, :system_id, :time, :user_id

  validates :client_id, :presence => true
  validates :closed, :presence => true
  validates :question, :presence => true
  validates :start, :presence => true
  validates :system_id, :presence => true
  validates :user_id, :presence => true
  validates :time, :numericality => true

  belongs_to :user
  belongs_to :system
  belongs_to :client

end
