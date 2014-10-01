require 'rails_helper'

feature 'User creates To Do List' do
	scenario 'Successfully' do
		visit new_todolist_path
			fill_in 'Task Description', with: 'Do this task'
			fill_in 'Days left', with: '6'
			fill_in 'Complete', with: 'false'
			click_button 'Save'
			click_on 'New Task'
				

	end
end