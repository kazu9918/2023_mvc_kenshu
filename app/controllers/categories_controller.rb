class CategoriesController < ApplicationController
  def boy
    @comics = Comic.by_category('boy')
  end

  def girl
    @comics = Comic.by_category('girl')
  end
end
