class AddSubjectIdToTopics < ActiveRecord::Migration[7.1]
  def change
    add_column :topics, :subject_id, :integer
    add_index :topics, :subject_id
  end
end
