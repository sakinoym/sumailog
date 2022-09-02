class Condition < ApplicationRecord
  belongs_to :user
  
  validates :budget, presence:true, length: { maximum: 50 }, numericality: { greater_than_or_equal_to: 0 }
  validates :area, presence:true, length: { maximum: 255 }
  validates :walking_distans_from_station, presence:true, length: { maximum: 50 }
  validates :exclusive_area, presence:true, length: { maximum: 50 }
  validates :floor_plan, presence:true, length: { maximum: 50 }
  validates :age_of_a_building, presence:true, length: { maximum: 50 }
  validates :detail_1, length: { maximum: 255 }
  validates :detail_2, length: { maximum: 255 }
  validates :detail_3, length: { maximum: 255 }
  
end
