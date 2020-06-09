class CreateCollectionFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :collection_favourites do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :favourite, null: false, foreign_key: true
      t.timestamps
    end
  end
end
