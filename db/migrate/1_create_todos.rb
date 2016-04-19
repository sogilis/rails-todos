class CreateTodos < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.text :description
    end
  end
end

