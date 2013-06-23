class CreateWorldNewsStoryFeeds < ActiveRecord::Migration
  def change
    create_table :world_news_story_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
