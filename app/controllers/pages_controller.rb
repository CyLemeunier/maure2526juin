class PagesController < ApplicationController
  def home
    @inscription = Inscription.new
    @inscriptions = Inscription.all
  end

  def informations

  end
end
