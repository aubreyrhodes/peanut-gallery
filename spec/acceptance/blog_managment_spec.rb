require 'spec_helper'

describe 'managing blogs' do
  before do
    sign_in
  end

  it 'allows a user to add a new blog' do
    visit root_path
    click_rel('new-blog')
    fill_in 'blog[name]', with: 'test blog'
    click_rel('blog-submit')
    expect( page ).to have_css('.blog', text: 'test blog')
  end
end
