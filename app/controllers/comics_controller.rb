class ComicsController < ApplicationController
  # GET /comics
  def index
    @comics = Comic.all
  end

  # GET /comics/1
  def show
    @comic = Comic.find(params[:id])
  end

  # GET /comics/new
  def new
    @comic = Comic.new
  end

  # GET /comics/1/edit
  def edit
    @comic = Comic.find(params[:id])
  end

  private
    # Only allow a list of trusted parameters through.
    def comic_params
      params.require(:comic).permit(:title, :content, :rating, :category)
    end
end
