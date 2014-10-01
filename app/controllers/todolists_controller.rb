class TodolistsController < ApplicationController
	
	def new
	end

	def create
		@todolist = Todolist.new(todolist_params)
	
		@todolist.save
		redirect_to @todolist
	end

	def show
		@todolist = Todolist.find(params[:index])
		@user = User.find(params[:index])
		id
	end

	private

	def todolist_params
		params.require(:todolist).permit(:description)
	end

end