class CreateLines < ActiveRecord::Migration[7.0]
  def change
    create_table :lines do |t|
      t.string :color
      t.string :stop
      t.integer :accessible

      t.timestamps
    end
  end
end
