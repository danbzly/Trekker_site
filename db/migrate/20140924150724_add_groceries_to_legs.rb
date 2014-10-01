class AddGroceriesToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :groceries, :string
  end
end
