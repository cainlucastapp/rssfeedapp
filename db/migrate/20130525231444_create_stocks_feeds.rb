class CreateStocksFeeds < ActiveRecord::Migration
  def change
    create_table :stocks_feeds do |t|
      t.string :url

      t.timestamps
    end
  end
end
