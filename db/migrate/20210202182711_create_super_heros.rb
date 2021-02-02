class CreateSuperHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :super_heros do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nickname
      t.text :description
      t.integer :price_cents

      t.timestamps
    end
  end
end
