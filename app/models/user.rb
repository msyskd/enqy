class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :last_name, :first_name, :notice_me, :last_notice
  # attr_accessible :title, :body

  validates :notice_me, :presence => true
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :last_notice, :presence => true, :numericality => true, :length => { :is => 6 }

  before_destroy :destroyable?

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

  def need_to_notice? (renewal_month)    
    if renewal_month > last_notice
      true
    else
      false
    end
  end

  def destroyable?
    errors.add(:base, "User used by client can not be destroyed") unless clients.count == 0
    errors.blank?
  end

end
