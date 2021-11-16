class PagesController < ApplicationController
  def home
    @offres = Offre.all
  end
end
