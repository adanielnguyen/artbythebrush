class CreateFollowedRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :followed_relationships do |t|
      t.references :record, polymorphic: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
