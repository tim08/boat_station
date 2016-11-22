class CreateBerths < ActiveRecord::Migration[5.0]
  def change
    create_table :berths do |t|
      t.decimal :lat, {:precision=>10, :scale=>6}
      t.decimal :lng, {:precision=>10, :scale=>6}
      t.timestamps
    end
  end
end
