class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.references :record, polymorphic: true
      t.references :fan, references: :users, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
