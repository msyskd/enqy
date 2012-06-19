class System < ActiveRecord::Base
  attr_accessible :name, :sort

  before_destroy :destroyable?

  validates :sort, :presence => true, :numericality => true, :uniqueness => true 
  validates :sort, :presence => true

  has_many :clients

  has_many :licenses
  has_many :clients, :through => :licenses

  default_scope order("sort")

  def destroyable?
    errors.add(:base, "System used by client can not be destroyed") unless licenses.count == 0
    errors.blank?
  end

end
