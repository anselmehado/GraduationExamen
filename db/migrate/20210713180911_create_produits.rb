class CreateProduits < ActiveRecord::Migration[5.2]
  def change
    create_table :produits do |t|
      t.string :ref_produit
      t.text :name_produit
      t.integer :prix_produit

      t.timestamps
    end
  end
end
