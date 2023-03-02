class BookingsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @bookings = Booking.all
  end

  def show
    find_booking_by_id
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # @booking.user = current_user
    @booking.save
    redirect_to bookings_path(@booking)
  end

  def edit
    find_booking_by_id
  end

  def update
    find_booking_by_id
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def destroy
    find_booking_by_id
    @booking.destroy
    redirect_to bookings_path(@booking), status: :see_other
  end

  private

  def find_booking_by_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name, :start_date, :end_date)
  end
end
