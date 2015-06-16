class Item < ActiveRecord::Base
  attr_accessible :description, :name, :price, :user_id

  belongs_to :user
  has_and_belongs_to_many :menus
  has_many :order_items
end
