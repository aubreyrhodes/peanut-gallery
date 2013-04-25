def sign_in(email = FactoryGirl.create(:user).email, password = 'test123')
  visit root_path
  click_rel('sign-in')
  fill_in 'email', with: email
  fill_in 'password', with: password
  click_rel('session-submit')
end
