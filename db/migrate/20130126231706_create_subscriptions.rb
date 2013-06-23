class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.string :newsletter
      t.integer :newsletter_id
      t.timestamps
    end
  end
end
