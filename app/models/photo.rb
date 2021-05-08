class Photo < ApplicationRecord

  belongs_to :user 
  has_one_attached :image

  validates :title, :category, presence: true
  
  
end
