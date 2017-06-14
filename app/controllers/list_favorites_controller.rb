class ListFavoritesController < ApplicationController
  before_action :set_list_favorite, only: [:show, :edit, :update, :destroy]

  # GET /list_favorites
  # GET /list_favorites.json
  def index
    @list_favorites = ListFavorite.all
  end

  # GET /list_favorites/1
  # GET /list_favorites/1.json
  def show
  end

  # GET /list_favorites/new
  def new
    @list_favorite = ListFavorite.new
  end

  # GET /list_favorites/1/edit
  def edit
  end

  # POST /list_favorites
  # POST /list_favorites.json
  def create
    @list_favorite = ListFavorite.new(list_favorite_params)

    respond_to do |format|
      if @list_favorite.save
        format.html { redirect_to @list_favorite, notice: 'Lista foi adicionada aos favoritos!' }
        format.json { render :show, status: :created, location: @list_favorite }
      else
        format.html { render :new }
        format.json { render json: @list_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_favorites/1
  # PATCH/PUT /list_favorites/1.json
  def update
    respond_to do |format|
      if @list_favorite.update(list_favorite_params)
        format.html { redirect_to @list_favorite, notice: 'Lista favoritos foi atualizada!' }
        format.json { render :show, status: :ok, location: @list_favorite }
      else
        format.html { render :edit }
        format.json { render json: @list_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_favorites/1
  # DELETE /list_favorites/1.json
  def destroy
    @list_favorite.destroy
    respond_to do |format|
      format.html { redirect_to list_favorites_url, notice: 'Lista removida dos favoritos!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_favorite
      @list_favorite = ListFavorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_favorite_params
      params.require(:list_favorite).permit(:id_list_id, :id_user_id)
    end
end
