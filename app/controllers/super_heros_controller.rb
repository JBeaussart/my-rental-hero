class SuperHerosController < ApplicationController
  def index
    @super_heros = SuperHero.all
  end

  def show
    @super_hero = SuperHero.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @super_hero = SuperHero.new
  end

  def create
    SuperHero.new(super_hero_params)
    @user = User.find(params[:user_id])
    @super_hero.user = @user
    if @super_hero.save
      redirect_to super_heros_path
    else
      render :new
    end
  end

  def edit
    @super_heros = SuperHero.find(params[:id])
  end

  def update
    @super_heros = SuperHero.find(params[:id])
    @super_heros.update(super_hero_params)
    redirect_to super_heros_path(super_heros)
  end

  def destroy
    @super_heros = SuperHero.find(params[:id])
    @super_heros.destroy
    redirect_to super_heros_path(@super_hero.user)
  end

  private

  def super_hero_params
    params.require(:super_heros).permit(:nickname, :description)
  end
end
