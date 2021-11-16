class CreateDemandes < ActiveRecord::Migration[6.0]
  def change
    create_table :demandes do |t|
      t.references :offre, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :validate
      t.date :date_debut
      t.date :date_fin

      t.timestamps
    end
  end
end
