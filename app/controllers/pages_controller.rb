class PagesController < ApplicationController
  def index
    @offres = Offre.all
  end
end
