class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :image_url, null: true
      t.string :video_url, null: true

      t.timestamps
    end
  end
end
