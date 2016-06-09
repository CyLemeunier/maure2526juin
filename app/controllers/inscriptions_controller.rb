class InscriptionsController < ApplicationController

  def index
    @inscriptions = Inscription.all
    @sh_n2 = Inscription.where(tableau: "simple homme", serie: "N2")
    @sh_n3 = Inscription.where(tableau: "simple homme", serie: "N3")
    @sh_r4 = Inscription.where(tableau: "simple homme", serie: "R4")
    @sh_r5 = Inscription.where(tableau: "simple homme", serie: "R3")
    @sh_r6 = Inscription.where(tableau: "simple homme", serie: "R2")
    @sh_d7 = Inscription.where(tableau: "simple homme", serie: "D7")
    @sh_d8 = Inscription.where(tableau: "simple homme", serie: "D8")
    @sh_d9 = Inscription.where(tableau: "simple homme", serie: "D9")
    @sh_p = Inscription.where(tableau: "simple homme", serie: "P")
    @sd_n2 = Inscription.where(tableau: "simple dame", serie: "N2")
    @sd_n3 = Inscription.where(tableau: "simple dame", serie: "N3")
    @sd_r4 = Inscription.where(tableau: "simple dame", serie: "R4")
    @sd_r5 = Inscription.where(tableau: "simple dame", serie: "R3")
    @sd_r6 = Inscription.where(tableau: "simple dame", serie: "R2")
    @sd_d7 = Inscription.where(tableau: "simple dame", serie: "D7")
    @sd_d8 = Inscription.where(tableau: "simple dame", serie: "D8")
    @sd_d9 = Inscription.where(tableau: "simple dame", serie: "D9")
    @sd_p = Inscription.where(tableau: "simple dame", serie: "P")
    @dh_n2 = Inscription.where(tableau: "double homme", serie: "N2")
    @dh_n3 = Inscription.where(tableau: "double homme", serie: "N3")
    @dh_r4 = Inscription.where(tableau: "double homme", serie: "R4")
    @dh_r5 = Inscription.where(tableau: "double homme", serie: "R3")
    @dh_r6 = Inscription.where(tableau: "double homme", serie: "R2")
    @dh_d7 = Inscription.where(tableau: "double homme", serie: "D7")
    @dh_d8 = Inscription.where(tableau: "double homme", serie: "D8")
    @dh_d9 = Inscription.where(tableau: "double homme", serie: "D9")
    @dh_p = Inscription.where(tableau: "double homme", serie: "P")
    @dd_n2 = Inscription.where(tableau: "double dame", serie: "N2")
    @dd_n3 = Inscription.where(tableau: "double dame", serie: "N3")
    @dd_r4 = Inscription.where(tableau: "double dame", serie: "R4")
    @dd_r5 = Inscription.where(tableau: "double dame", serie: "R3")
    @dd_r6 = Inscription.where(tableau: "double dame", serie: "R2")
    @dd_d7 = Inscription.where(tableau: "double dame", serie: "D7")
    @dd_d8 = Inscription.where(tableau: "double dame", serie: "D8")
    @dd_d9 = Inscription.where(tableau: "double dame", serie: "D9")
    @dd_p = Inscription.where(tableau: "double dame", serie: "P")
    @dm_n2 = Inscription.where(tableau: "double mixte", serie: "N2")
    @dm_n3 = Inscription.where(tableau: "double mixte", serie: "N3")
    @dm_r4 = Inscription.where(tableau: "double mixte", serie: "R4")
    @dm_r5 = Inscription.where(tableau: "double mixte", serie: "R3")
    @dm_r6 = Inscription.where(tableau: "double mixte", serie: "R2")
    @dm_d7 = Inscription.where(tableau: "double mixte", serie: "D7")
    @dm_d8 = Inscription.where(tableau: "double mixte", serie: "D8")
    @dm_d9 = Inscription.where(tableau: "double mixte", serie: "D9")
    @dm_p = Inscription.where(tableau: "double mixte", serie: "P")
  end

  def new
    @inscription = Inscription.new
  end

  def create
    @inscription = Inscription.new(inscription_params)
    @inscription.save
    redirect_to inscriptions_path
  end

  def edit
    @inscription = Inscription.find(params[:id])
  end

  def update
    @inscription = Inscription.find(params[:id])
    @inscription.update(inscription_params)
    redirect_to inscriptions_path
  end

  def destroy
    @inscription = Inscription.find(params[:id])
    @inscription.destroy
    redirect_to inscriptions_path
  end


  private

  def inscription_params
    params.require(:inscription).permit(:responsable, :mail, :tel, :tableau, :serie,
      :nom_joueur1, :prenom_joueur1, :licence_joueur1, :club_joueur1, :nom_joueur2,
      :prenom_joueur2, :licence_joueur2, :club_joueur2)
  end
end
