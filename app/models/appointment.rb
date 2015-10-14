class Appointment < ActiveRecord::Base
  
  belongs_to :practioner
  belongs_to :pet
  belongs_to :customer
  
  validates :date_of_visit, presence: true, date: {on_or_after: Date.current }

  
  
end
