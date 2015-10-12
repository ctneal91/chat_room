class User < ActiveRecord::Base
  has_secure_password
  belongs_to :rooms
  has_many :comments
end
