require 'spec_helper'

describe "User" do
	xit "can sign up" do
		visit new_user_registration_path
		expect(page).to have_content("Sign up")
		fill_in "Name", with: "TestUser"
		fill_in "Email", with: "me@sachanganesh.com"
		fill_in "Password", with: "thisisapass"
		fill_in "Password confirmation", with: "thisisapass"
		click_button "Sign up"
		expect(page).to have_content("Welcome! You have signed up successfully.")
	end

	xit "can sign in" do
		visit new_user_session_path
		expect(page).to have_content("Sign in")
		fill_in "Name"
	end

	xit "can sign out" do
	end
end