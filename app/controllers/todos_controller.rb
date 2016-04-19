class TodosController < ApplicationController
  def index
    render template: "todos/index"
  end
end

