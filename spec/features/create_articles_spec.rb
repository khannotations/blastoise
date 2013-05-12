# require 'spec_helper'

# feature "CreateArticles" do
#   before :each do
#     @email = 't@u.com'
#     @password = 'password'
#     @user = create(:reader, email: @email, password: @password)
#     sign_in @email, @password

#     @url = 'http://www.nytimes.com/2013/05/11/us/politics/\
#             benghazi-e-mails-put-white-house-on-the-defensive.html?hp&_r=0'
#   end
#   scenario "user enters new url" do
#     visit "/"
#     current_path.should eq '/'
#     within('#new-article') do
#       fill_in 'url', with: @url
#     end
#     click_button 'submit'
#     page.should have_content("Benghazi E-Mails Put White House on the Defensive")
#     page.should have_content("MARK LANDLER")
#     page.should have_content("Ms. Rice was later")
#     page.should have_content("In this case, the State Department")
#   end
# end
