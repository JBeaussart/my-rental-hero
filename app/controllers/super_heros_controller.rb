class SuperHerosController < ApplicationController
  def index
    @super_heros = SuperHero.all
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
    params.require(:super_hero).permit(:nickname, :description)
  end
end
