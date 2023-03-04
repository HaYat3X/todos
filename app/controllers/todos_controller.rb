class TodosController < ApplicationController
  # ! タスクを新規投稿するメソッド
  def new
    @todo = Todo.new
  end

  # ! タスクを新規投稿するメソッド
  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    if @todo.save
      redirect_to "/"
    else
      redirect_to "/"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:todos)
  end
end
