class AddTitleToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :leg_header, :string
  end
end
