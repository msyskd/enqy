class SalesPerson < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone1, :phone2

  validates :email, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :phone1, :presence => true, :numericality => true
  validates :phone2, :numericality => true

  def full_name
    [last_name, first_name].join(' ')
  end

  def full_name=(name)
    split = name.split(' ', 2)
    self.last_name = split.first
    self.first_name = split.last
  end

  has_many :clients

end
