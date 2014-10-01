require 'rails_helper'

feature 'User creates to do item' do
	scenario 'Successfully' do
		visit new_todo_path
			fill_in 'Task Description', with: 'Do this task.'
			fill_in 'Days left', with: '6'
			# fill_in 'complete', with: 'false'
			click_button 'Save'
	end
end