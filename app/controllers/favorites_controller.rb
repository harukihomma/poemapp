class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(poem_id: params[:poem_id])
    redirect_back(fallback_location: poems_path)
  end

  def destroy
    @poem = Poem.find(params[:poem_id])
    @favorite = current_user.favorites.find_by(poem_id: @poem.id)
    @favorite.destroy
    redirect_back(fallback_location: poems_path)
  end
end