class Menu < ActiveRecord::Base
  attr_accessible :descrition, :name, :user_id, :valid_date

  belongs_to :user
  has_and_belongs_to_many :items
end
