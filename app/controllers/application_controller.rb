class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 
  protect_from_forgery with: :exception

  @dogs = Dog.all
  @hash = Gmaps4rails.build_markers(@dogs) do |dog, marker|
  marker.lat user.latitude
  marker.lng user.longitude
end
end
