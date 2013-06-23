class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :content
      t.string :author
      t.integer :category_id
      t.timestamps
    end
  end
end
