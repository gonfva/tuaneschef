class CreateVotos < ActiveRecord::Migration[5.0]
  def change
    create_table :votos do |t|

      t.timestamps
    end
  end
end
