class OffresController < ApplicationController
  def show
    @offres = Offre.find(params[:id])
  end

  def index
    @offres = policy_scope(Offre)
  end

  def new
    @offre = Offre.new
    authorize @offre
  end

  def create
    @offre = Offre.new(offre_params)
    authorize @offre
    @user = current_user
    @offre.user = @user
    if @offre.save!
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
