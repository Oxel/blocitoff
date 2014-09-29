require 'rails_helper'

feature 'User Signs Up for Blocitoff' do 
	scenario 'Successfully' do
		visit new_user_path
		fill_in 'user_user_name', with: 'Joe User'
		fill_in 'user_user_email', with: 'joeuser@example.com'
		fill_in 'user_user_password', with: 'joepassword'
		click_button 'Save'
	end
end