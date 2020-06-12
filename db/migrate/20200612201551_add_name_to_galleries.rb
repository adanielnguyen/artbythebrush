class AddNameToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :name, :string
  end
end
