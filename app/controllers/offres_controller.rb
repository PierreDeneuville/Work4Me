class OffresController < ApplicationController
  def show
    @offres = Offre.find(params[:id])
  end

  def index
    @offres = policy_scope(Offre)
  end

  # private
  # params.require(@offres).permit(@offre)
end
