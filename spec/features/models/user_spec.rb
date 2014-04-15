require 'spec_helper'

describe "User" do
	xit "can register" do
    visit new_user_registration_path
    fill_in 'Name', :with => 'User'
    fill_in 'Email', :with => 'usertest@example.com'
    fill_in 'Password', :with => 'userpassword'
    fill_in 'Password Confirmation', :with => 'userpassword'
    click_button 'Sign up'
    page.should have content 'Welcome'
	end

	xit "can sign in" do
		visit new_user_session_path
		expect(page).to have_content("Sign in")
		fill_in "Name"
	end

	xit "can sign out" do
	end
end