class CreateVoitures < ActiveRecord::Migration[7.0]
  def change
    create_table :voitures do |t|
      t.string :nom
      t.text :image
      t.text :description
      t.string :modele
      t.string :lieu

      t.timestamps
    end
  end
end
