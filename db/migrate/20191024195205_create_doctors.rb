class CreateDoctors < ActiveRecord::Migration[6.0]

  # This method allows to give String informations type to the initialized instance and to link it to the table City.
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
