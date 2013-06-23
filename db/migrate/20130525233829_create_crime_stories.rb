class CreateCrimeStories < ActiveRecord::Migration
  def change
    create_table :crime_stories do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at
      t.string :guid

      t.timestamps
    end
  end
end
