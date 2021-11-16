class OffresController < ApplicationController
  def show
    @offres = Offre.find(params[:id])
  end

  private
  params.require(@offres).permit(@offre)
end
