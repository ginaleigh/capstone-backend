class CreateStops < ActiveRecord::Migration[7.0]
  def change
    create_table :stops do |t|
      t.string :name
      t.integer :line_id
      t.integer :stop_id
      t.boolean :is_accessible
      t.boolean :towards_loop

      t.timestamps
    end
  end
end
