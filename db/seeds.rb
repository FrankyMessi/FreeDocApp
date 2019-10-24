# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This require allows to use the gem Faker to generate random informations of different types.
require 'faker'

# The following method allows to erase the databases of every single table before the seed starts.
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
SpecialtyDoctor.destroy_all

# This loop allows to generate 10 instances of each table to be able to run the tests required.
10.times do 
  city = City.create!(name: Faker::Nation.unique.capital_city)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name, zip_code: Faker::Address.unique.zip_code, city: city)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name, city: city)
  appointment = Appointment.create!(date: Faker::Time.unique.backward(days: 100), doctor: doctor, patient: patient, city: city)
  specialty = Specialty.create(name: "expert")
  specialty_doctor = SpecialtyDoctor.create(doctor: doctor, specialty: specialty)
end   