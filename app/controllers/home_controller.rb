class HomeController < ApplicationController
  before_filter :authenticate_user! 
  def index
    
    redirect_to practioners_path if current_user.owner?
    
    redirect_to pets_path if current_user.practioner?
    
    redirect_to appointments_path if current_user.receptionist?
    
    redirect_to customer_index_path if current_user.customer?
    
    
  end
end
