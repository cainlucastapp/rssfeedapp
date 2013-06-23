class CreatePoliticsFeeds < ActiveRecord::Migration
  def change
    create_table :politics_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
