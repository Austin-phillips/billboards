class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.has_mnay :songs

      t.timestamps
    end
  end
end
