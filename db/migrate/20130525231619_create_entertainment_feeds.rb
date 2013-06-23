class CreateEntertainmentFeeds < ActiveRecord::Migration
  def change
    create_table :entertainment_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
