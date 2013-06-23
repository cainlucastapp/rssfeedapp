class CreateBusinessFeeds < ActiveRecord::Migration
  def change
    create_table :business_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
