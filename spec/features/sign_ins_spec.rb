require 'spec_helper'

feature "SignIns" do
  before :each do
    @email = 't@u.com'
    @password = 'password'
    @u = create(:reader, email: @email, password: @password)
  end
  scenario "new user redirects to welcome" do
    visit "/"
    current_path.should eq '/welcome'
  end

  scenario "user signs in correctly" do
    visit "/"
    current_path.should eq '/welcome'
    within('#sign-in') do
      fill_in 'email', with: @email
      fill_in 'password', with: @password
    end
    click_button 'Go'
    current_path.should eq '/'
  end

  scenario "user signs in incorrectly" do
    visit "/"
    within('#sign-in') do
      fill_in 'email', with: @email
      fill_in 'password', with: 'ARGH'
    end
    click_button 'Go'
    current_path.should eq '/welcome'
  end

  scenario "new user signs up correctly" do
    visit "/"
    fill_in 'reader[email]', with: 'ta@u.com'
    fill_in 'reader[password]', with: 'ARGH'
    click_button 'Go'
    current_path.should eq '/welcome'
  end

  scenario "new user signs up incorrectly" do
    visit "/"
    fill_in 'reader[email]', with: @email
    fill_in 'reader[password]', with: 'ARGH'
    click_button 'Go'
    current_path.should eq '/welcome'
  end

  scenario "logout" do
    sign_in(@email, @password)
    visit "/"
    current_path.should eq '/'
    click_link 'Log out'
    current_path.should eq '/welcome'
  end

end
