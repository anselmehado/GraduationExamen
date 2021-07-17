json.extract! produit, :id, :ref_produit, :name_produit, :prix_produit, :created_at, :updated_at
json.url produit_url(produit, format: :json)
