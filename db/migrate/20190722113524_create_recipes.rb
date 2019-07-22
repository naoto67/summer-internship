class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false, default: ""
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
