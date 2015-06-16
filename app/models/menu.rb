class Menu < ActiveRecord::Base
  attr_accessible :descrition, :name, :user, :valid_date

  validates :name, :user_id, :presence => true

  belongs_to :user
  has_and_belongs_to_many :items
end
