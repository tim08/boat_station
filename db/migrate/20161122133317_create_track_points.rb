class CreateTrackPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :track_points do |t|
      t.decimal :lat, {:precision=>10, :scale=>6}
      t.decimal :lng, {:precision=>10, :scale=>6}
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
