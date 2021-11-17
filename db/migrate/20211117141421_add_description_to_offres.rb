class AddDescriptionToOffres < ActiveRecord::Migration[6.0]
  def change
    add_column :offres, :description, :text
  end
end
