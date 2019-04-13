class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false, unique: true
      t.integer :duration, null: false, default: 0
      t.string :track_data
      t.references :user

      t.timestamps
    end
    add_index :tracks, :name, unique: true
  end
end
