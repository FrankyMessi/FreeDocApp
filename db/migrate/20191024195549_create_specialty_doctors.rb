class CreateSpecialtyDoctors < ActiveRecord::Migration[6.0]

  # This method allows to add a String type information to the initialized instance, and to link it to other instances from other tables (Doctor & Specialty).
  def change
    create_table :specialty_doctors do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
