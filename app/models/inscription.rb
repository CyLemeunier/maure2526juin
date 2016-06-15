TABLEAUX = ["simple homme", "simple dame", "double homme", "double dame", "double mixte"]
SERIES = ["N2", "N3", "R4", "R5", "R6", "D7", "D8", "D9", "P"]
PAIEMENT = ["En attente de paiement", "Payé"]

class Inscription < ActiveRecord::Base
  def self.as_csv
    attributes = %w{nom_joueur1 prenom_joueur1 licence_joueur1 club_joueur1 tableau serie nom_joueur2 prenom_joueur2 licence_joueur2 club_joueur2 }

    CSV.generate do |csv|
      csv << attributes
      all.each do |inscription|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
