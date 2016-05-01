class AddNotesToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :notes, :text, null: false, default: ''

    reversible do
      execute <<~SQL
        UPDATE todos SET notes='';
      SQL
    end
  end
end
