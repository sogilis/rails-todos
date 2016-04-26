class TodosController < ActionController::Base
  def index
    @todos = Todo.all
  end
end

