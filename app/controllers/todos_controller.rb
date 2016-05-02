class TodosController < ApplicationController
  before_action :assign_todo, except: %i(index new create)

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
  end

  def edit
  end

  def update
    if @todo.update_attributes(todo_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_url
  end

private

  def assign_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:description, :notes)
  end
end
