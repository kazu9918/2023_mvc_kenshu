class HighRatedComicsController < ApplicationController
  def index
    @comics = Comic.high_rated
  end
end
