class Property < ApplicationRecord
  belongs_to :user
  
  validates :name, presence:true, length: { maximum: 50 }
  validates :price, presence:true, length: { maximum: 50 },
                    format: { with: /\A[0-9０-９]+\z/ }
  validates :address, presence:true, length: { maximum: 50 }
  validates :company, length: { maximum: 50 }
end