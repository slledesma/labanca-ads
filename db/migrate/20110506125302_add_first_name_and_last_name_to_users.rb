class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_nsame, :string
  end

  def self.down
    remove_column :users, :last_nsame
    remove_column :users, :first_name
  end
end
