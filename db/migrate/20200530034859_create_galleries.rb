class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.date :start_date
      t.date :end_date
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
