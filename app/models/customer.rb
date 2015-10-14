class Customer < ActiveRecord::Base
  
  has_many :pets
  has_many :appointments
  belongs_to :user
  
end
