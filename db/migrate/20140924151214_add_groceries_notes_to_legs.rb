class AddGroceriesNotesToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :grocery_notes, :string
  end
end
