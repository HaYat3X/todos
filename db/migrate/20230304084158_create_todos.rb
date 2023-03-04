class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.references :user, foreign_key: true
      t.string :todos
      t.timestamps
    end
  end
end
