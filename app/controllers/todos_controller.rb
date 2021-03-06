class TodosController < ApplicationController
	
	def new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.save
		redirect_to @todo
	end

	def show
		@todo = Todo.find params[:id]
	end
	
	private

	def todo_params
		params.require(:todo).permit(:task_description)
	end

end