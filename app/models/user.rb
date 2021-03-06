class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :type
  # attr_accessible :title, :body

  has_many :menus
  has_many :items
  has_many :orders

  def chef?
    type == 'Chef'
  end
  def customer?
    type == 'Customer'
  end
end
