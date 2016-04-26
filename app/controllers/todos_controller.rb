class TodosController < ActionController::Base
  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    todo = Todo.create! params.permit(:description)
    redirect_to "/todos"
  end
end
