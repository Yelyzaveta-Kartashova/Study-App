class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end