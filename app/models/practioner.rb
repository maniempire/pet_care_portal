class Practioner < ActiveRecord::Base
  
  belongs_to :user
  has_many :appointments
  
  validates :name, presence: true, length: { maximum: 35 }
  validates :zip, length: { maximum: 5 }
  validates :years_in_practice, inclusion: { in: 1..100 }
  
end
