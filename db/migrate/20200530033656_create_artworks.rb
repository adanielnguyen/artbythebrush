class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.references :user, foreign_key: true
      t.string :medium
      t.date :date_created
      t.timestamps
    end
  end
end
