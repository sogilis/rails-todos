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

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update_attributes(todo_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :notes)
  end
end
