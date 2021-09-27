class RenameTelephoneToCabinets < ActiveRecord::Migration[6.0]
  def change
    rename_column :cabinets, :telephone, :phone

  end
end
