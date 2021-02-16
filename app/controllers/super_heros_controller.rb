class SuperHerosController < ApplicationController
  def index

    if params[:query].present?
      @super_heros = SuperHero.where("nickname ILIKE ?", "%#{params[:query]}%")
    else
      @super_heros = SuperHero.all
    end

    @markers = @super_heros.map do |super_hero|
      {
        lat: super_hero.latitude,
        lng: super_hero.longitude
      }
  end

  def show
    @super_hero = SuperHero.find(params[:id])
    @booking = Booking.new
  end

  def new
    @super_hero = SuperHero.new
  end

  def create
    @super_hero = SuperHero.new(super_hero_params)
    @super_hero.user = current_user
    if @super_hero.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @super_hero = SuperHero.find(params[:id])
  end

  def update
    @super_hero = SuperHero.find(params[:id])
    @super_hero.update(super_hero_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @super_hero = SuperHero.find(params[:id])
    @super_hero.destroy
    redirect_to user_path(current_user)
  end

  private

  def super_hero_params
    params.require(:super_hero).permit(:nickname, :description, :photo, :price_cents, :address)
  end
end
