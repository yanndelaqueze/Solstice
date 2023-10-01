class OrderItem < ApplicationRecord
  OCCASIONS = ["Spontané", "Bonne fête !", "Remerciement", "Mariage", "Anniversaire", "Anniversaire de mariage", "Deuil", "Saint Valentin", "Commémoration", "Bon rétablissement", "Fête des mères", "Pour se faire plaisir", "Fête des grands-mères"]
  belongs_to :product
  belongs_to :order
  belongs_to :user, optional: true

  validates :occasion, inclusion: { in: OCCASIONS }
end
