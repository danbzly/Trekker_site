class AddAverageCostToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :avcost, :string
  end
end
