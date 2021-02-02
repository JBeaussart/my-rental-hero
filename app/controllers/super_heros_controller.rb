class SuperHerosController < ApplicationController
  def index
    @super_hero = Superheros.all
  end
end
