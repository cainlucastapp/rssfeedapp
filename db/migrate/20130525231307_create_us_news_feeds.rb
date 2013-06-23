class CreateUsNewsFeeds < ActiveRecord::Migration
  def change
    create_table :us_news_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
