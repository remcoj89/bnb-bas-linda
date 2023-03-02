class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    find_by_id
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def find_by_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name, :start_date, :end_date)
  end
end
