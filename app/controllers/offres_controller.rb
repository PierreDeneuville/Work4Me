class OffresController < ApplicationController
  def index
    @offres = Offre.all
    authorize @offres
    # redirect_to root_path
  end
end
