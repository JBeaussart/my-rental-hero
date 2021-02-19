class BookingsController < ApplicationController
  require 'date'

  # before_action :authenticate_user!

  def index
    @booking = Booking.all
  end

  def create
    @super_hero = SuperHero.find(params[:super_hero_id])
    @booking = Booking.new(booking_params)
    @booking.super_hero = @super_hero
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(@super_hero)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
