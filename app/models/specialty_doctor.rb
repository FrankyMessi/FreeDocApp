class SpecialtyDoctor < ApplicationRecord

  # This allows to create the N/N relationship between Doctor and Specialty through the table SpecialtyDoctor.
  belongs_to :doctor
  belongs_to :specialty
end
