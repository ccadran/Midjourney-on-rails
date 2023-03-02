json.extract! joueur, :id, :nom, :image, :content, :created_at, :updated_at
json.url joueur_url(joueur, format: :json)
