class TodosController < ApplicationController
  # ! ログインが必要な処理
  before_action :authenticate_user!, only: [:index, :new, :create, :complete, :destroy]

  # ! タスク一覧を取得するメソッド
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  # ! タスクを新規投稿するメソッド
  def new
    @todo = Todo.new
  end

  # ! タスクを新規投稿するメソッド
  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    @todo.state = nil

    if @todo.save
      redirect_to "/todos", notice: "タスクを登録しました。"
    else
      redirect_to "/todos", alert: "タスクの登録に失敗しました。"
    end
  end

  # ! タスクを削除するメソッド
  def destroy
    todo = Todo.find(params[:id])

    @todos = Todo.all
    @todo = Todo.new
    flash.now[:notice] = "コメントを投稿しました"
    todo.destroy
  end

  # ! タスクを完了するメソッド
  def complete
    todo = Todo.find(params[:id])
    if todo.update(state: 1)
      redirect_to "/todos", notice: "タスクを完了しました。"
    else
      redirect_to "/todos", alert: "タスクの完了に失敗しました。"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:todos)
  end
end
