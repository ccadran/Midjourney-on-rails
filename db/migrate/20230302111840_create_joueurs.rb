class CreateJoueurs < ActiveRecord::Migration[7.0]
  def change
    create_table :joueurs do |t|
      t.string :nom
      t.text :image
      t.text :content

      t.timestamps
    end
  end
end
