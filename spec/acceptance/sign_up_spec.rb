require 'spec_helper'

describe 'user sign up' do
  it 'allows a user to sign up' do
    visit root_path
    click_rel('sign-up')
    fill_in 'user[email]', with: 'test@email.com'
    fill_in 'user[password]', with: 'test123'
    fill_in 'user[password_confirmation]', with: 'test123'
    click_rel('user-submit')
  end
end

describe 'user sign in' do
  it 'allows an existing user to login' do
    sign_in
  end
end

describe 'a user that has not signed in' do
  it 'should not be able to view user content' do
    visit root_path
    expect(page).to_not have_css('[rel~=new-blog]')
  end
end
