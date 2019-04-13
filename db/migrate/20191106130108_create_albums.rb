class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :user
      t.references :artist, null: false

      t.timestamps
    end
  end
end
