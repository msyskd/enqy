class SalesPerson < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone1, :phone2

  before_destroy :destroyable?

  validates :email, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :phone1, :presence => true, :numericality => true
  validates :phone2, :numericality => true

  validates_format_of :email,
                      :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message    => 'email must be valid'

  has_many :clients

  def full_name
    [last_name, first_name].join(' ')
  end

  def full_name=(name)
    split = name.split(' ', 2)
    self.last_name = split.first
    self.first_name = split.last
  end

  def email_with_name
    "#{full_name} <#{email}>"
  end

  def destroyable?
    errors.add(:base, "Sales person used by client can not be destroyed") unless clients.count == 0
    errors.blank?
  end

end
