class CreateCocineros < ActiveRecord::Migration[5.0]
  def change
    create_table :cocineros do |t|

      t.timestamps
    end
  end
end
