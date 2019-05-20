class DriversController < ApplicationController

  before_action :get_driver, only: [:show, :destroy]

  def index
    @drivers = Driver.all
  end

  def show
  end

  def new

    @driver = Driver.new
    @driver.build_license
    render 'new'

  end

  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      redirect_to drivers_url
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    @driver.destroy
    redirect_to drivers_url
  end

private

  def get_driver
    @driver = Driver.find(params[:id])
  end

  def driver_params
    params.require(:driver).permit( :first_name, :last_name, license_attributes: [:number, :state])
  end

end
