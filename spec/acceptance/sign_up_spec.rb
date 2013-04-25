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
