class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /legs
  # GET /legs.json
  def index
    @legs = Leg.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    
  end

  # GET /legs/1
  # GET /legs/1.json
  def show
    

  end

  # GET /legs/new
  def new
    @leg = Leg.new
  end

  # GET /legs/1/edit
  def edit
  end

  # POST /legs
   def create
    @leg = current_user.legs.build(leg_params)
      if @leg.save
        redirect_to @leg, notice: 'Leg was successfully created.'
      else
        render action: 'new'
      end
    end
    
    

  # PATCH/PUT /legs/1
  def update
      if @leg.update(leg_params)
        redirect_to @leg, notice: 'Leg was successfully updated.'
#         render :show, status: :ok, location: @leg 
      else
        render action: 'edit'
      end
    end

  # DELETE /legs/1
  def destroy
    @leg.destroy
     redirect_to legs_url, notice: 'Leg was successfully destroyed.' 
    end
  
  def correct_user
      @leg = current_user.legs.find_by(id: params[:id])
      redirect_to legs_path, notice: "Not authorized to edit this pin" if @leg.nil?
    end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leg_params
      params.require(:leg).permit(:tran_air, :tran_air_cost, :tran_air_notes, :tran_train, :tran_train_cost, :tran_train_notes, :tran_bus, :tran_bus_cost, :tran_bus_notes, :tran_met, :tran_met_cost, :tran_met_notes, :tran_taxi, :tran_taxi_cost, :tran_taxi_notes, :tran_car, :tran_car_cost, :tran_car_notes, :tran_ferry, :tran_ferry_cost, :tran_ferry_notes, :tran_extra, :tran_extra_cost, :tran_extra_notes, :food_break, :food_break_cost, :food_break_notes, :tran_total, :food_lunch, :food_lunch_cost, :food_lunch_notes, :food_dinner, :food_dinner_cost, :food_dinner_notes, :food_snacks, :food_snacks_cost, :food_snacks_notes, :food_total, :food_extra, :food_extra_cost, :food_extra_notes, :lodging, :lodging_cost, :lodging_notes, :sight, :sight_cost, :sight_notes, :souvenirs, :souvenirs_cost, :souvenirs_notes, :bathroom, :bathroom_cost, :bathroom_notes, :bank, :bank_cost, :bank_notes, :map_img, :leg_description, :total_cost, :leg_header, :misc, :misc_cost, :misc_notes, :avcost)
    end
end
