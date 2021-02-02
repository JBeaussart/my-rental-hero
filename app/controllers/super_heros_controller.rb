class SuperHerosController < ApplicationController
  def index
    @super_heros = SuperHero.all
  end

  def show
    @super_heros = SuperHero.find(params[:id])
  end
end
