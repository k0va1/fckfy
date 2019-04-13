class AddArtistsTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :artists_tracks do |t|
      t.bigint :artist_id
      t.bigint :track_id

      t.timestamps
    end

    add_index :artists_tracks, :artist_id
    add_index :artists_tracks, :track_id
  end
end
