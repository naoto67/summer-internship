class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false
      t.string :name, null: false, default: ""
      t.string :amount

      t.timestamps
    end
  end
end
