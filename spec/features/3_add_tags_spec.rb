require 'spec_helper'

# As a user
# So that I can organise my links into different categories for ease of search
# I would like to *add tags to the links* in my bookmark manager

feature 'Add tags' do

  scenario '3) Add tag to url' do
    visit '/links/new'
    expect(page.status_code).to eq 200
      fill_in('url_input', :with => 'http://bbc.co.uk/news')
      fill_in('title_input', :with => 'BBC News')
      fill_in('tag_input', :with => 'News')
      click_button 'Submit!'
      link = Link.first
      expect(page).to have_content('News')
  end
end
