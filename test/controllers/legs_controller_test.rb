require 'test_helper'

class LegsControllerTest < ActionController::TestCase
  setup do
    @leg = legs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leg" do
    assert_difference('Leg.count') do
      post :create, leg: { bank: @leg.bank, bank_cost: @leg.bank_cost, bank_notes: @leg.bank_notes, bathroom: @leg.bathroom, bathroom_cost: @leg.bathroom_cost, bathroom_notes: @leg.bathroom_notes, food_break: @leg.food_break, food_break_cost: @leg.food_break_cost, food_break_notes: @leg.food_break_notes, food_dinner: @leg.food_dinner, food_dinner_cost: @leg.food_dinner_cost, food_dinner_notes: @leg.food_dinner_notes, food_extra: @leg.food_extra, food_extra_cost: @leg.food_extra_cost, food_extra_notes: @leg.food_extra_notes, food_lunch: @leg.food_lunch, food_lunch_cost: @leg.food_lunch_cost, food_lunch_notes: @leg.food_lunch_notes, food_snacks: @leg.food_snacks, food_snacks_cost: @leg.food_snacks_cost, food_snacks_notes: @leg.food_snacks_notes, food_total: @leg.food_total, lodging: @leg.lodging, lodging_cost: @leg.lodging_cost, lodging_notes: @leg.lodging_notes, sight: @leg.sight, sight_cost: @leg.sight_cost, sight_notes: @leg.sight_notes, souvenirs: @leg.souvenirs, souvenirs_cost: @leg.souvenirs_cost, souvenirs_notes: @leg.souvenirs_notes, tran_air: @leg.tran_air, tran_air_cost: @leg.tran_air_cost, tran_air_notes: @leg.tran_air_notes, tran_bus: @leg.tran_bus, tran_bus_cost: @leg.tran_bus_cost, tran_bus_notes: @leg.tran_bus_notes, tran_car: @leg.tran_car, tran_car_cost: @leg.tran_car_cost, tran_car_notes: @leg.tran_car_notes, tran_extra: @leg.tran_extra, tran_extra_cost: @leg.tran_extra_cost, tran_extra_notes: @leg.tran_extra_notes, tran_ferry: @leg.tran_ferry, tran_ferry_cost: @leg.tran_ferry_cost, tran_ferry_notes: @leg.tran_ferry_notes, tran_met: @leg.tran_met, tran_met_cost: @leg.tran_met_cost, tran_met_notes: @leg.tran_met_notes, tran_taxi: @leg.tran_taxi, tran_taxi_cost: @leg.tran_taxi_cost, tran_taxi_notes: @leg.tran_taxi_notes, tran_total: @leg.tran_total, tran_train: @leg.tran_train, tran_train_cost: @leg.tran_train_cost, tran_train_notes: @leg.tran_train_notes }
    end

    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should show leg" do
    get :show, id: @leg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leg
    assert_response :success
  end

  test "should update leg" do
    patch :update, id: @leg, leg: { bank: @leg.bank, bank_cost: @leg.bank_cost, bank_notes: @leg.bank_notes, bathroom: @leg.bathroom, bathroom_cost: @leg.bathroom_cost, bathroom_notes: @leg.bathroom_notes, food_break: @leg.food_break, food_break_cost: @leg.food_break_cost, food_break_notes: @leg.food_break_notes, food_dinner: @leg.food_dinner, food_dinner_cost: @leg.food_dinner_cost, food_dinner_notes: @leg.food_dinner_notes, food_extra: @leg.food_extra, food_extra_cost: @leg.food_extra_cost, food_extra_notes: @leg.food_extra_notes, food_lunch: @leg.food_lunch, food_lunch_cost: @leg.food_lunch_cost, food_lunch_notes: @leg.food_lunch_notes, food_snacks: @leg.food_snacks, food_snacks_cost: @leg.food_snacks_cost, food_snacks_notes: @leg.food_snacks_notes, food_total: @leg.food_total, lodging: @leg.lodging, lodging_cost: @leg.lodging_cost, lodging_notes: @leg.lodging_notes, sight: @leg.sight, sight_cost: @leg.sight_cost, sight_notes: @leg.sight_notes, souvenirs: @leg.souvenirs, souvenirs_cost: @leg.souvenirs_cost, souvenirs_notes: @leg.souvenirs_notes, tran_air: @leg.tran_air, tran_air_cost: @leg.tran_air_cost, tran_air_notes: @leg.tran_air_notes, tran_bus: @leg.tran_bus, tran_bus_cost: @leg.tran_bus_cost, tran_bus_notes: @leg.tran_bus_notes, tran_car: @leg.tran_car, tran_car_cost: @leg.tran_car_cost, tran_car_notes: @leg.tran_car_notes, tran_extra: @leg.tran_extra, tran_extra_cost: @leg.tran_extra_cost, tran_extra_notes: @leg.tran_extra_notes, tran_ferry: @leg.tran_ferry, tran_ferry_cost: @leg.tran_ferry_cost, tran_ferry_notes: @leg.tran_ferry_notes, tran_met: @leg.tran_met, tran_met_cost: @leg.tran_met_cost, tran_met_notes: @leg.tran_met_notes, tran_taxi: @leg.tran_taxi, tran_taxi_cost: @leg.tran_taxi_cost, tran_taxi_notes: @leg.tran_taxi_notes, tran_total: @leg.tran_total, tran_train: @leg.tran_train, tran_train_cost: @leg.tran_train_cost, tran_train_notes: @leg.tran_train_notes }
    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should destroy leg" do
    assert_difference('Leg.count', -1) do
      delete :destroy, id: @leg
    end

    assert_redirected_to legs_path
  end
end
