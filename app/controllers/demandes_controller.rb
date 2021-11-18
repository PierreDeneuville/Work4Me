class DemandesController < ApplicationController
  def show
    @demande = Demande.find(params[:id])
    @message = Message.new
    authorize @demande
  end

  def new
    @demande = Demande.new
    @offre = Offre.find(params[:format])
    @demande.offre = @offre
    authorize @demande
  end

  def create
    id = params[:demande][:offre]
    @offre = Offre.find(id.to_i)
    @demande = Demande.new(demande_params)
    @user = current_user
    @demande.user = @user
    @demande.offre = @offre
    authorize @demande
    if @demande.save
      redirect_to demande_path(@demande)
    else
      render :new
    end
  end

  private

  def demande_params
    params.require(:demande).permit(:date_debut, :date_fin)
  end
end
