class RemoveCategoryFromComics < ActiveRecord::Migration[6.1]
  def change
    remove_column :comics, :category, :string
  end
end
