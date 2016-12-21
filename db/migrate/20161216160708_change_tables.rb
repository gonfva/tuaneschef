class ChangeTables < ActiveRecord::Migration[5.0]
  def change
    add_column :cocineros, :nombre, :string
    add_reference :votos, :user, index: true, foreign_key: true
    add_reference :votos, :cocinero, index: true, foreign_key: true
  end
end
