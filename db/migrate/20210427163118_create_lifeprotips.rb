class CreateLifeprotips < ActiveRecord::Migration[6.1]
  def change
    create_table :lifeprotips do |t|
      t.string :title
      t.text :content
      t.string :genre
      t.string :author

      t.timestamps
    end
  end
end
