class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.references :recipe, null: false
      t.string :title, null: false, default: ""
      t.text :content

      t.timestamps
    end
  end
end
