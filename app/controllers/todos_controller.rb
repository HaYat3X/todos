class TodosController < ApplicationController
  # ! タスク一覧を取得するメソッド
  def index
    @todos = Todo.all
  end

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

  # ! タスクを更新するメソッド
  def edit
    @todo = Todo.find(params[:id])
  end

  # ! タスクを更新するメソッド
  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to "/"
    else
      redirect_to "/"
    end
  end

  # ! タスクを削除するメソッド
  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
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
