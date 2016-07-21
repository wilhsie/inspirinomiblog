class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :url
      t.string :timeOfDay
      t.string :typeOfWeather

      t.timestamps
    end
  end
end
