class AddCategoryToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :category, :string
  end
end
