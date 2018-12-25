class DevicesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      redirect_to device_path(@device)
    else
      render action: :new
    end
  end

  def edit
     @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])
    if @device.update_attributes(device_params)
      redirect_to device_path(@device)
    else
      render :edit
    end
  end

  def show
    @device = Device.find(params[:id])
  end

  def destroy
    @device = Device.find(params[:id])
    @device.destroy
    redirect_to root_path
  end

  private
    def device_params
      params.require(:device).permit(:name, :ip, :frequency, :community)
    end
end
