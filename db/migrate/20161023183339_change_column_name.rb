class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :artists, :artist_name, :name
    rename_column :songs, :song_name, :name
  end
end
