class CreateTechnologyFeeds < ActiveRecord::Migration
  def change
    create_table :technology_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
