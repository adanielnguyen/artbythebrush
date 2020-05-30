class AddMoreToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :origin, :string
    add_column :users, :location, :string
    add_column :users, :biography, :string
    add_column :users, :DOB, :date
  end
end
