require 'capybara/rspec'

module SigninUser
  def sign_in(email, pass)
    visit "/"
    within('#sign-in') do
      fill_in 'email', with: email
      fill_in 'password', with: pass
    end
    click_button 'Go'
  end
end
