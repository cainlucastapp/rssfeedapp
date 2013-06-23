class CreateCrimeFeeds < ActiveRecord::Migration
  def change
    create_table :crime_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
