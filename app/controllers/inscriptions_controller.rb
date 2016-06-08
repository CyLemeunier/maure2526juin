class InscriptionsController < ApplicationController

  def index
    @sh_n2 = Inscription.where(tableau: "simple homme", serie: "N2")
    @sh_n3
    @sh_r4
    @sh_r5
    @sh_r6
    @sh_d7 = Inscription.where(tableau: "simple homme", serie: "D7")
    @sh_d8
    @sh_d9
    @sd_p
    @sd_n2
    @sd_n3
    @sd_r4
    @sd_r5
    @sd_r6
    @sd_d7 = Inscription.where(tableau: "simple dame", serie: "D7")
    @sd_d8
    @sd_d9
    @sd_p
    @dd_n2
    @dd_n3
    @dd_r4
    @dd_r5
    @dd_r6
    @dd_d7
    @dd_d8
    @dd_d9
    @dd_p
    @dh_n2
    @dh_n3
    @dh_r4
    @dh_r5
    @dh_r6
    @dh_d7
    @dh_d8
    @dh_d9
    @dh_p
    @dm_n2
    @dm_n3
    @dm_r4
    @dm_r5
    @dm_r6
    @dm_d7
    @dm_d8s
    @dm_d9
    @dm_p
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

  end

  def update

  end

  def destroy

  end

  private

  def inscription_params
    params.require(:inscription).permit(:responsable, :mail, :tel, :tableau, :serie,
      :nom_joueur1, :prenom_joueur1, :licence_joueur1, :club_joueur1, :nom_joueur2,
      :prenom_joueur2, :licence_joueur2, :club_joueur2)
  end
end
