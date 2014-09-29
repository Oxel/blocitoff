require 'rails_helper'

feature 'User Signs Up for Blocitoff' do 
	scenario 'Successfully' do
		visit new_user_path
		fill_in 'User name', with: 'Joe User'
		fill_in 'User email', with: 'joeuser@example.com'
		fill_in 'User password', with: 'joepassword'
		click_button 'Save'
	end
end