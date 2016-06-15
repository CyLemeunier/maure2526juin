TABLEAUX = ["simple homme", "simple dame", "double homme", "double dame", "double mixte"]
SERIES = ["N2", "N3", "R4", "R5", "R6", "D7", "D8", "D9", "P"]
PAIEMENT = ["En attente de paiement", "Payé"]

class Inscription < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv.add_row column_names
      all.each do |inscription|
        values = inscription.attributes.values
        csv.add_row values
      end
    end
  end
end

