class CreateCourseSections < ActiveRecord::Migration[7.1]
  def change
    create_table :course_sections do |t|
      t.string :name
      t.text :description
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
