class AddUserIdToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :user_id, :integer
    add_index :legs, :user_id
  end
end
