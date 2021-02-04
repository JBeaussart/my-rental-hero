class BookingsController < ApplicationController
  def create
    @super_hero = Super_hero.find(:super_hero_id)
    @booking = Booking.new
    @booking.superhero = @super_hero
  end

end
