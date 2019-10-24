class Appointment < ApplicationRecord

  # This allows to create the N/N relationship between Doctor and Patient through this table.
  belongs_to :doctor
  belongs_to :patient
  belongs_to :city
end
