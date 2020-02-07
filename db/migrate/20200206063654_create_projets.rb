class CreateProjets < ActiveRecord::Migration[5.2]
  def change
    create_table :projets do |t|
      t.belongs_to :user, index: true
      t.string :titre_du_projet
      t.text :description
      t.integer :jeutons
      t.integer :jours
      t.integer :j_restant
      t.integer :financement
      t.string :categories
      t.string :localisation
      t.string :image
      t.boolean :statusAdmin, default: false

      t.timestamps
    end
  end
end
