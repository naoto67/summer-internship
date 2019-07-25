class AddStatusToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :status, :integer, limit: 1, null: false, default: 0
    add_index :recipes, :status
  end
end
