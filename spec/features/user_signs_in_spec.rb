require 'rails_helper'

describe "Sign in flow" do



	describe "successful" do
		it "redirects user to their to do list" do
			# user = authenticated_user
			visit root_path
			fill_in 'user_user_email', with: 'joeuser@example.com'
			fill_in 'user_user_password', with: 'joepassword'
		
				click_button 'Sign In'
		end


	end
end
