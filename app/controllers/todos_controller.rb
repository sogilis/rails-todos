class TodosController < ActionController::Base
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params.permit(:description))

    if @todo.save
      redirect_to todos_url
    else
      render :new
    end
  end
end
