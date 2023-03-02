json.extract! voiture, :id, :nom, :image, :description, :modele, :lieu, :created_at, :updated_at
json.url voiture_url(voiture, format: :json)
