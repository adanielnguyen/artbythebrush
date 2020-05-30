class CreateCurates < ActiveRecord::Migration[6.0]
  def change
    create_table :curates do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
