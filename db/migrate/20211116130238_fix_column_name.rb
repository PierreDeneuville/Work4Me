class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :demandes, :validate, :accepte
  end
end
