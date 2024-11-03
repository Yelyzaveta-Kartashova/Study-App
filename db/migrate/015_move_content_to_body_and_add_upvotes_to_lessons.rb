class MoveContentToBodyAndAddUpvotesToLessons < ActiveRecord::Migration[6.0]
  def up
    add_column :lessons, :upvotes, :integer, default: 0

    Lesson.reset_column_information

    Lesson.find_each do |lesson|
      if lesson.content.present?
        lesson.body.body = lesson.content 
        lesson.save(validate: false) 
      end
    end

    remove_column :lessons, :content
  end

  def down
    add_column :lessons, :content, :text

    Lesson.reset_column_information
    Lesson.find_each do |lesson|
      lesson.update_column(:content, lesson.body.to_plain_text) if lesson.body.present?
    end

    remove_column :lessons, :upvotes
  end
end
