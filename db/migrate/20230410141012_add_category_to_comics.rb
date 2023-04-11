class AddCategoryToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :category, :string
  end
end
