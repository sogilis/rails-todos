class Todo
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def self.all
    [
      Todo.new("Faire les courses"),
      Todo.new("Payer les impôts"),
      Todo.new("Coder une appli Rails"),
    ]
  end
end

