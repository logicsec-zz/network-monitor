class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, :load_devices

  def load_devices
  	@devices = Device.order(:name)
  end
  

end
