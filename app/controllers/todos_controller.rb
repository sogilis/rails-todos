class TodosController < ApplicationController
  def index
    @todos = ["Faire les courses",
              "Payer les impôts",
              "Coder une appli Rails"]
  end
end

