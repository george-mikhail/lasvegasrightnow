class RemoveSlugFromPlaces < ActiveRecord::Migration[5.0]
  def change

    remove_column :places, :slug, :string
  end
end
