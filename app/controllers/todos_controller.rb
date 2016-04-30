class TodosController < ActionController::Base
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_url
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :notes)
  end
end
