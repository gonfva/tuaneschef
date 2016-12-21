class AddFotoToCocineros < ActiveRecord::Migration[5.0]
  def change
    add_column :cocineros, :foto, :string
  end
end
