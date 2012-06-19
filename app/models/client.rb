class Client < ActiveRecord::Base
  attr_accessible :name, :renewal_month1, :renewal_month10, :renewal_month11, :renewal_month12, :renewal_month2, :renewal_month3, :renewal_month4, :renewal_month5, :renewal_month6, :renewal_month7, :renewal_month8, :renewal_month9, :sales_person_id, :usable, :user_id, :licenses_attributes

  validates :name, :presence => true
  validates :sales_person_id, :presence => true, :numericality => true
  validates :user_id, :presence => true, :numericality => true

  belongs_to :user
  belongs_to :sales_person
  belongs_to :system
  
  has_many :licenses, :dependent => :destroy
  has_many :systems, :through => :licenses
  accepts_nested_attributes_for :licenses
  
  def renewal_month
    a = []

    a.push(1) if renewal_month1
    a.push(2) if renewal_month2
    a.push(3) if renewal_month3
    a.push(4) if renewal_month4
    a.push(5) if renewal_month5
    a.push(6) if renewal_month6
    a.push(7) if renewal_month7
    a.push(8) if renewal_month8
    a.push(9) if renewal_month9
    a.push(10) if renewal_month10
    a.push(11) if renewal_month11
    a.push(12) if renewal_month12
    
    a
    
  end
  
  scope :notice_to, lambda { |user| where(:user_id => user) }
  
  scope :renewal_on_month1, where(:renewal_month1 => true)
  scope :renewal_on_month2, where(:renewal_month2 => true)
  scope :renewal_on_month3, where(:renewal_month3 => true)
  scope :renewal_on_month4, where(:renewal_month4 => true)
  scope :renewal_on_month5, where(:renewal_month5 => true)
  scope :renewal_on_month6, where(:renewal_month6 => true)
  scope :renewal_on_month7, where(:renewal_month7 => true)
  scope :renewal_on_month8, where(:renewal_month8 => true)
  scope :renewal_on_month9, where(:renewal_month9 => true)
  scope :renewal_on_month10, where(:renewal_month10 => true)
  scope :renewal_on_month11, where(:renewal_month11 => true)
  scope :renewal_on_month12, where(:renewal_month12 => true)
  
  default_scope order("name")
  
end
