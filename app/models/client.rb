class Client < ActiveRecord::Base
  attr_accessible :name, :notice_me, :renewal_month1, :renewal_month10, :renewal_month11, :renewal_month12, :renewal_month2, :renewal_month3, :renewal_month4, :renewal_month5, :renewal_month6, :renewal_month7, :renewal_month8, :renewal_month9, :sales_person_id, :usable, :user_id

  validates :name, :presence => true
  validates :notice_me, :presence => true
  validates :sales_person_id, :presence => true, :numericality => true
  validates :user_id, :presence => true, :numericality => true

  belongs_to :user
  belongs_to :sales_person
  
  

end
