class AddMisToLeg < ActiveRecord::Migration
  def change
    add_column :legs, :misc, :string
    add_column :legs, :misc_cost, :string
    add_column :legs, :misc_notes, :text
  end
end
