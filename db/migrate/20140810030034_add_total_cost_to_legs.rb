class AddTotalCostToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :total_cost, :string
  end
end
