class SuperHerosController < ApplicationController
  def index
    @super_heros = Superheros.all
  end
end
