class Comment < ActiveRecord::Base
  attr_accessible :content, :restaurant, :user

  belongs_to :restaurant
  belongs_to :user

  validates_presence_of :content, :user_id, :restaurant_id

end
