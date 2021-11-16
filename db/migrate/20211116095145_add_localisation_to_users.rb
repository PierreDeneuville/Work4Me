class AddLocalisationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :localisation, :string
  end
end
