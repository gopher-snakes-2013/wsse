class Restaurant < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :comments
  belongs_to :user

  validates :name, presence: true
end
