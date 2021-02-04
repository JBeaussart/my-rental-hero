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

  end

  def edit

  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  def booking_params
    params.require(:booking)
  end

end
