class AddUserIdToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :user_id, :integer
    add_index :questions, :user_id
  end
end
