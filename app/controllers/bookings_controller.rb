class BookingsController < ApplicationController

  # before_action :athenticate_user!

  def create
    @super_hero = SuperHero.find(params[:super_hero_id])
    @booking = Booking.new(booking_params)
    @booking.super_hero = @super_hero
    @booking.user = current_user
    if @booking.save
      flash[:success] = "Your Super Hero has been booked"
      redirect_to super_hero_path(@super_hero)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

#   def show
#     @booking = Booking.find(params[:id])
#   end

#   def update
#     @booking = Booking.find(params[:id])
#     @booking.update(booking_params)
#     redirect_to user_super_hero_path(@super_hero)
#   end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_super_hero_path(@super_heros)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
