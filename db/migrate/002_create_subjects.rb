class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
