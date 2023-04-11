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

  # POST /comics
  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      flash[:notice] = "新しいマンガの保存が完了しました。"
      redirect_to comic_path(@comic)
    else
      render :new
    end
  end

  # PATCH/PUT /comics/1
  def update
    @comic = Comic.find(params[:id])
    
    if @comic.update(comic_params)
      flash[:notice] = "マンガ情報の変更を保存しました。"
      redirect_to comic_path(@comic)
    else
      render :edit
    end
  end

  # DELETE /comics/1
  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    flash[:notice] = "マンガを削除しました。"
    redirect_to comics_path
  end

  private
    # Only allow a list of trusted parameters through.
    def comic_params
      params.require(:comic).permit(:title, :content, :rating, :category)
    end
end
