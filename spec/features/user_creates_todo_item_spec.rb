require 'rails_helper'

feature 'User creates to do item' do
	scenario 'Successfully' do
		visit todolists_path
		click_on('New Task')
	end
end