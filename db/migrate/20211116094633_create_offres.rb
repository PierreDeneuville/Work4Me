class CreateOffres < ActiveRecord::Migration[6.0]
  def change
    create_table :offres do |t|
      t.references :user, null: false, foreign_key: true
      t.string :métier
      t.float :prix

      t.timestamps
    end
  end
end
