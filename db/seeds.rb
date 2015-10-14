# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding data...."   

owner_user = User.create(:email=>'robert@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 0)
practioner_user1 = User.create(:email=>'bob@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 1)
practioner_user2 = User.create(:email=>'susan@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 1)
receptionist_user = User.create(:email=>'rosy@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 2, :name => "Rosy Oliver")
customer_user1 = User.create(:email=>'john@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 3, :name => "John Britto")
customer_user2 = User.create(:email=>'james@petcare.com', :password=>'password', :password_confirmation =>'password', :role => 3, :name => "James Watt")

owner_practioner = Practioner.create(:name => 'Robert King', :address => '1420, Orchard Lake Road', :city => 'Farmington Hills', :state => 'MI', :zip => 68834, :school_degree_received_from => 'Michigan State University', :years_in_practice => 10, :user_id => owner_user.id )
practioner1 = Practioner.create(:name => 'Bob Madison', :address => '3231, Manhattan Road', :city => 'Detroit', :state => 'MI', :zip => 68834, :school_degree_received_from => 'Michigan State University', :years_in_practice => 4, :user_id => practioner_user1.id )
practioner2 = Practioner.create(:name => 'Susan Albert', :address => '2345, Lake View Road', :city => 'Ann Arbor', :state => 'MI', :zip => 68834, :school_degree_received_from => 'Michigan State University', :years_in_practice => 3, :user_id => practioner_user2.id )

customer1 = Customer.create(:name => 'John Britto', :address => '2121, University road, Detroit, MI', :contact_no => '456-234-2345', :user_id => customer_user1.id)
customer2 = Customer.create(:name => 'James Watt', :address => '4567, Ray road, Detroit, MI', :contact_no => '243-234-2345', :user_id => customer_user2.id)

pet1 = Pet.create(:name => 'Pinky', :pet_type => 'Cat', :breed => 'Breed1', :age => 5, :weight => 4.5, :date_of_last_visit => '2015-09-24 06:08:05', :customer_id => customer1.id)
pet2 = Pet.create(:name => 'Sweety', :pet_type => 'Dog', :breed => 'Breed2', :age => 3, :weight => 2.5, :date_of_last_visit => '2015-09-22 08:08:05', :customer_id => customer2.id)
pet3 = Pet.create(:name => 'Whitie', :pet_type => 'Bird', :breed => 'Breed3', :age => 3, :weight => 2.5, :date_of_last_visit => '2015-09-20 12:08:05', :customer_id => customer1.id)

appointment1 = Appointment.create(:date_of_visit => '2015-09-27 06:08:05', :pet_id => pet1.id, :customer_id => pet1.customer.id, :practioner_id => practioner1.id, :appointment_reminder => true, :reason_for_visit => 'fever')
appointment2 = Appointment.create(:date_of_visit => '2015-09-26 06:08:05', :pet_id => pet2.id, :customer_id => pet2.customer.id, :practioner_id => practioner2.id, :appointment_reminder => true, :reason_for_visit => 'Appetite')

puts "Seeding data completed"   