class CreateTodos < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.text :description
      t.timestamps
    end
  end
end

