class AddPunchlineToSuper < ActiveRecord::Migration[6.0]
  def change
    add_column :super_heros, :punchline, :text
  end
end
