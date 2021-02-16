class AddAddressToSuperHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :super_heros, :address, :string
  end
end
