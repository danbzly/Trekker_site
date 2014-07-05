class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.string :tran_air
      t.string :tran_air_cost
      t.text :tran_air_notes
      t.string :tran_train
      t.string :tran_train_cost
      t.text :tran_train_notes
      t.string :tran_bus
      t.string :tran_bus_cost
      t.text :tran_bus_notes
      t.string :tran_met
      t.string :tran_met_cost
      t.text :tran_met_notes
      t.string :tran_taxi
      t.string :tran_taxi_cost
      t.text :tran_taxi_notes
      t.string :tran_car
      t.string :tran_car_cost
      t.text :tran_car_notes
      t.string :tran_ferry
      t.string :tran_ferry_cost
      t.text :tran_ferry_notes
      t.string :tran_extra
      t.string :tran_extra_cost
      t.text :tran_extra_notes
      t.string :food_break
      t.string :food_break_cost
      t.text :food_break_notes
      t.string :tran_total
      t.string :food_lunch
      t.string :food_lunch_cost
      t.text :food_lunch_notes
      t.string :food_dinner
      t.string :food_dinner_cost
      t.text :food_dinner_notes
      t.string :food_snacks
      t.string :food_snacks_cost
      t.text :food_snacks_notes
      t.string :food_total
      t.string :food_extra
      t.string :food_extra_cost
      t.text :food_extra_notes
      t.string :lodging
      t.string :lodging_cost
      t.text :lodging_notes
      t.string :sight
      t.string :sight_cost
      t.text :sight_notes
      t.string :souvenirs
      t.string :souvenirs_cost
      t.text :souvenirs_notes
      t.string :bathroom
      t.string :bathroom_cost
      t.text :bathroom_notes
      t.string :bank
      t.string :bank_cost
      t.text :bank_notes

      t.timestamps
    end
  end
end
