class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :load_devices

  def load_devices
  	@devices = Device.order(:name)
  end
  def index
  	if @devices.count == 0
  		redirect_to new_device_path, :alert => "Please, create a Device!"
  	else
  		redirect_to device_path(@devices.first)
  	end
  end
end
