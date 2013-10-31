class Vote < ActiveRecord::Base
  attr_accessible :vote, :user_id, :comment_id

  belongs_to :user
  belongs_to :comment, dependent: :destroy



  validates_presence_of :opinion, :user_id
end
