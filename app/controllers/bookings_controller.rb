class BookingsController < ApplicationController
  def create
    @super_hero = SuperHero.find(params[:super_hero_id])
    @booking = Booking.new(booking_params)
    @booking.super_hero_id = @super_hero.id
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

#   def index
#     @bookings = Booking.all
#   end

  def show
    @booking = Booking.find(params[:id])
  end

#   def update
#     @booking = Booking.find(params[:id])
#     @booking.update(booking_params)
#     redirect_to user_super_hero_path(@super_hero)
#   end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_super_hero_path(@super_hero)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end

end
