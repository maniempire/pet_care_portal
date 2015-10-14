class Pet < ActiveRecord::Base
  
  belongs_to :customer
  has_many :appointments
  
  validates :name, presence: true, length: { maximum: 35 }
  validates :pet_type, inclusion: { in: %w(Cat Dog Bird) }
  validates :breed, presence: true, length: { maximum: 35 }
  validates :age, :weight, :date_of_last_visit, presence: true
  
  
end
