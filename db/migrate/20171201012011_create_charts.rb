class CreateCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :charts do |t|
      t.string :name
      t.has_many :songs

      t.timestamps
    end
  end
end
