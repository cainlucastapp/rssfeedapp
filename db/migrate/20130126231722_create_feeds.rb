class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :url
      t.integer :category_id
      t.string :name
      t.string :kind
      t.timestamps
    end
  end
end
