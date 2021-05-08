class User < ApplicationRecord

  has_many :photos
  has_secure_password

  validates :name, presence: true 

  
end
