class AddPhotosToCabinet < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :photos, :string
  end
end
