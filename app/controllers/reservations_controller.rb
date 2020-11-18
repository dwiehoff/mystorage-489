class ReservationsController < ApplicationController

  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id])
    @reservation.space = @space
    @reservation.user = current_user
    @reservation.is_confirmed = false
    if @reservation.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
