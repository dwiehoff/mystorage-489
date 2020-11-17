class ReservationsController < ApplicationController

  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end
end
