class Log < ApplicationRecord
  belongs_to :property
  
  validates :content, presence: true, length: { maximum: 255 }
end
