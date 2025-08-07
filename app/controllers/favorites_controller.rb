class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = current_user.favorites_article
  end
end
