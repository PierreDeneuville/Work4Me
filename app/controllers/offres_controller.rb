class OffresController < ApplicationController
  def new
    @offre = Offre.new
  end

  def create
    @offre = Offre.new(offre_params)
    @offre.user = @user
    if @offre.save
      redirect_to offre_path(@offre)
    else
      render :new
    end
  end

  private

  def offre_params
    params.require(:offre).permit(:métier, :prix)
  end
end
