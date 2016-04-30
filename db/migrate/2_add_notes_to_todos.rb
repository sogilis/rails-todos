class AddNotesToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :notes, :text
  end
end
