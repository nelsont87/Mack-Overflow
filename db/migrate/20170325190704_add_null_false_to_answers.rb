class AddNullFalseToAnswers < ActiveRecord::Migration[5.0]
  def up
    change_column :answers, :description, :string, null: false
    change_column :answers, :question_id, :integer, null: false
  end

  def down
    change_column :answers, :description, :string, null: true
    change_column :answers, :question_id, :integer, null: true
  end
end
