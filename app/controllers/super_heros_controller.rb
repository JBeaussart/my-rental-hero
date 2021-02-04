class SuperHerosController < ApplicationController
  def index
    # @user = User.find(params[:id])
    @super_heros = SuperHero.all
  end

  def show
    @super_hero = SuperHero.find(params[:id])
  end

  def new
    @super_hero = SuperHero.new
  end

  def create
    @super_hero = SuperHero.new(super_hero_params)
    if @super_hero.save
      redirect_to super_heros_path(@super_hero)
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
    redirect_to super_hero_path(super_heros)
  end

  def destroy
    @super_hero = SuperHero.find(params[:id])
    @super_hero.destroy
    redirect_to user_super_heros_path(@super_hero.user)
  end

  private

  def super_hero_params
    params.require(:super_hero).permit(:nickname, :description)
  end
end
