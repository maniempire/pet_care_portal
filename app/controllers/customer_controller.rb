class CustomerController < ApplicationController
  before_filter :authenticate_user! 
  
  def index
    @customer_pet_appointments = current_user.customer.pets.flat_map(&:appointments)
  end
  
  def pets
    @customer_pets = current_user.customer.pets
  end
  
end