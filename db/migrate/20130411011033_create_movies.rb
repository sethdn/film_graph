class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :artist
      t.integer :length_minutes
      t.integer :year
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
