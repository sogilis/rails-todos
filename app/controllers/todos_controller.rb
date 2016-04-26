class TodosController < ActionController::Base
  def index
    @todos = Todo.all
  end

  def new
  end
end

