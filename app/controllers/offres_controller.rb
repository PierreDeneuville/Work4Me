class OffresController < ApplicationController
  def index
    @offres = policy_scope(Offre)
  end
end
