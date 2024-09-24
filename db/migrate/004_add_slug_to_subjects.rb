class AddSlugToSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :subjects, :slug, :string
    add_index :subjects, :slug, unique: true
  end
end
