class Doctor < ApplicationRecord

  # This allows to create a N/N relationship between Patient and Doctor through the table Appointment, and the 1/N relationship between City and Doctor.
  # Also the N/N relationship between Doctor and Specialty through SpecialtyDoctor. 
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :specialty_doctors
  has_many :specialties, through: :specialty_doctors
  belongs_to :city
end
