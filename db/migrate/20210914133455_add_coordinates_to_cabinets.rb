class AddCoordinatesToCabinets < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :latitude, :float
    add_column :cabinets, :longitude, :float
  end
end
