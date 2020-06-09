class AddUserToCollection < ActiveRecord::Migration[6.0]
  def change
    add_reference :collections, :user
  end
end
