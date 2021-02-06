class BookingsController < ApplicationController
  def create
    @super_hero = Super_hero.find(params[:user][:booking][:super_hero_id])
    @booking = Booking.new
    @booking.superhero = @super_hero
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render :new
    end
  end

  def index
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit

  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to user_super_heros_path(@super_hero)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_super_heros_path(@super_hero)
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :review)
  end

end
