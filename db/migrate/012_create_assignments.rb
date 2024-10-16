class CreateAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.references :assigned_by, null: false, foreign_key: { to_table: :users } 
      t.datetime :assigned_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.integer :status, default: 0

      t.timestamps
    end
    add_index :assignments, [:user_id, :role_id], unique: true
  end
end
