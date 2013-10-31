class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation, :email

  has_many :restaurants
  has_many :comments
  has_many :votes

  has_secure_password

  validates_presence_of :username, :password_digest, :email

  def self.already_voted_on?(comment_id)
    self.votes.find_by_comment_id(comment_id).length > 0
  end

end
