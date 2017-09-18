class AddUsernumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usernum, :string
  end
end
