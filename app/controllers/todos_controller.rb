class TodosController < ApplicationController

	def index
	  @todos = Todo.all
	end
	
	
	def new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.save
		redirect_to todos_path
	end

	def show
		@todo = Todo.find params[:id]
	end
	
	private

	def todo_params
		params.require(:todo).permit(:task_description, :due_date)
	end

end