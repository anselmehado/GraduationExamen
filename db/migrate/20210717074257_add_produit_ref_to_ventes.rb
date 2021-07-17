class AddProduitRefToVentes < ActiveRecord::Migration[5.2]
  def change
    add_reference :ventes, :produit, foreign_key: true
  end
end
