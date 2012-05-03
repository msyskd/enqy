class SalesPerson < ActiveRecord::Base
  attr_accessible :email, :name, :phone1, :phone2

  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true
  validates :phone1, :numericality => true
  validates :phone2, :numericality => true

  has_many :clients

end
