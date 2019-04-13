class AddAlbumsTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_tracks do |t|
      t.bigint :album_id
      t.bigint :track_id

      t.timestamps
    end

    add_index :albums_tracks, :album_id
    add_index :albums_tracks, :track_id
  end
end
