class CreateArtworkTags < ActiveRecord::Migration[6.0]
  def change
    create_table :artwork_tags do |t|
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
