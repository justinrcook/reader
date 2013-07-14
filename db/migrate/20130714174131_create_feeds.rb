class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :url
      t.string :website
      t.string :etag
      t.string :last_modified

      t.timestamps
    end
  end
end
