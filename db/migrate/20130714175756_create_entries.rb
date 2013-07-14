class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :url
      t.string :author
      t.string :summary
      t.string :content
      t.datetime :published
      t.references :feed, index: true

      t.timestamps
    end
  end
end
