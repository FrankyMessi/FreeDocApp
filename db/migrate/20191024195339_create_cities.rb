class CreateCities < ActiveRecord::Migration[6.0]

  # This method allows to give a String type information to the initialized instance.
  def change
    create_table :cities do |t|
      t.string :name
      t.timestamps
    end
  end
end
