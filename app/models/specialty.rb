class Specialty < ApplicationRecord

  # This allows to create the N/N relationship between Doctor and Specialty through the table SpecialtyDoctor.
  has_many :specialty_doctors
  has_many :doctors, through: :specialty_doctors
end
