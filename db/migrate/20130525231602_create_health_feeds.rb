class CreateHealthFeeds < ActiveRecord::Migration
  def change
    create_table :health_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
