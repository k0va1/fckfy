class AddAlbumsArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_artists do |t|
      t.bigint :album_id
      t.bigint :artist_id

      t.timestamps
    end

    add_index :albums_artists, :album_id
    add_index :albums_artists, :artist_id
  end
end
