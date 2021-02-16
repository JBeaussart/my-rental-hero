class AddCoordinatesToSuperHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :super_heros, :latitude, :float
    add_column :super_heros, :longitude, :float
  end
end
