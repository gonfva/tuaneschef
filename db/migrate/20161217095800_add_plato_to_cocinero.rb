class AddPlatoToCocinero < ActiveRecord::Migration[5.0]
  def change
    add_column :cocineros, :plato, :string, :default => "Editame usando admin"
  end
end
