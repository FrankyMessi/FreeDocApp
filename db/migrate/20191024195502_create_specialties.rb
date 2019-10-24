class CreateSpecialties < ActiveRecord::Migration[6.0]

  # This method allows to give a String type information to the initialized instance.
  def change
    create_table :specialties do |t|
      t.string :name

      t.timestamps
    end
  end
end
