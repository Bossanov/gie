class AddDescriptionToCabinets < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :telephone, :string
    add_column :cabinets, :description, :text
  end
end
