class AddRatingToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :rating, :integer
  end
end
