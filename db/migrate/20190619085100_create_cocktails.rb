class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :ingredients
      t.integer :dose

      t.timestamps
    end
  end
end
