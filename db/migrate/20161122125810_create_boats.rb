class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.references :berth, foreign_key: true

      t.timestamps
    end
  end
end
