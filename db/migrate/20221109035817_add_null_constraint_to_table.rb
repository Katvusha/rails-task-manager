class AddNullConstraintToTable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :tasks, :title, false
    change_column_null :tasks, :details, false
    change_column_null :tasks, :completed, false
  end
end
