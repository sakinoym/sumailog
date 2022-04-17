class Property < ApplicationRecord
  belongs_to :user
  
  validates :name, presence:true, length: { maximum: 50 }
  validates :price, presence:true, length: { maximum: 50 }, numericality: true
  validates :address, presence:true, length: { maximum: 50 }
  validates :company, length: { maximum: 50 }
  
  has_many :logs
end