class Property < ApplicationRecord
  belongs_to :user
  
  validates :name, presence:true, length: { maximum: 50 }
  validates :price, presence:true, length: { maximum: 50 }, numericality: { greater_than_or_equal_to: 0 }
  validates :address, presence:true, length: { maximum: 50 }
  validates :company, length: { maximum: 50 }
  
  has_many :logs, dependent: :destroy
end