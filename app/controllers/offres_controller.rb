class OffresController < ApplicationController

  def show
    @offre = Offre.find(params[:id])
    authorize @offre
  end

  def index
    if params[:query].present?
      sql_query = "métier ILIKE :query"
      @offres = policy_scope(Offre).where(sql_query, query: "%#{params[:query]}%")
    else
      @offres = policy_scope(Offre)
    end
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
