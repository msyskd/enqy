class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :last_name, :first_name
  # attr_accessible :title, :body

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

  def destroyable?
    errors.add(:base, "User used by client can not be destroyed") unless clients.count == 0
    errors.blank?
  end

end
