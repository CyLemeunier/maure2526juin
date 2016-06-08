class PagesController < ApplicationController
  def home
    @inscription = Inscription.new
  end
end
