class CreateVentes < ActiveRecord::Migration[5.2]
  def change
    create_table :ventes do |t|
      t.date :date_vente
      t.float :montant_vente
      t.integer :qte_vente

      t.timestamps
    end
  end
end
