class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :image_url, null: true

      t.timestamps
    end
  end
end
