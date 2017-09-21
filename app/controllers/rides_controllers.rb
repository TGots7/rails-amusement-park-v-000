class RidesController < ApplicationController

  def new
    attraction_id = params[:attraction_id]
    user_id = params[:user_id]
    ride = Ride.create(attraction_id: attraction_id, user_id: user_id)
    status = ride.take_ride
    redirect_to user_path(ride.user), alert: status
  end

end
