class AddDesciptionToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :leg_description, :text
  end
end
