class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user, index: true
      t.references :feed, index: true
      t.references :subscriptions_count, :integer, default: 0
      t.references :entries, :integer, default: 0
      t.string :title
      t.datetime :last_modified
      t.timestamps
    end
    add_index :subscriptions, [:user_id, :feed_id], unique: true
  end
end
