class DemandesController < ApplicationController

  def show
    @demande = Demande.find(params[:id])
  end

  def new
    @demande = Demande.new
    authorize @demande
  end

  def create
    @demande = Demande.new(demande_params)
    @user = current_user
    @demande.user = @user
    authorize @demande
    if @demande.save
      redirect_to demandes_path(@demande)
    else
      render :new
    end
  end

  private

  def demande_params
    params.require(:demande).permit(:date_debut, :date_fin)
  end
end
