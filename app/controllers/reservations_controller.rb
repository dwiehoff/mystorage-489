class ReservationsController < ApplicationController

  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation = Reservation.find(params[:space_id])
    @reservation.save
    redirect_to space_path(@space)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
